#!/usr/bin/env python3
"""Banco HTTP local. Ejecutar: python3 tests/downloads/benchmark.py [--yt-dlp EJECUTABLE]."""
import argparse
from concurrent.futures import ThreadPoolExecutor
from contextlib import contextmanager
from hashlib import sha256
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import re
import os
import socket
import subprocess
import tempfile
import threading
import time
from urllib.request import Request, urlopen

MIB = 1024 * 1024
RATE = 512 * 1024
VIDEO = bytes(range(251)) * (6 * MIB // 251)
AUDIO = bytes(reversed(range(251))) * (2 * MIB // 251)


class Server(ThreadingHTTPServer):
    def __init__(self, files, rate=RATE, cuts=0, honor_ranges=True, wrong_range=False):
        super().__init__(("127.0.0.1", 0), Handler)
        self.files = files
        self.rate = rate
        self.cuts = cuts
        self.honor_ranges = honor_ranges
        self.wrong_range = wrong_range
        self.active = []
        self.max_active = 0
        self.overlap = False
        self.sent = 0
        self.requests = []
        self.lock = threading.Lock()
        self.url = f"http://127.0.0.1:{self.server_port}"


class Handler(BaseHTTPRequestHandler):
    def log_message(self, *_):
        pass

    def do_HEAD(self):
        self.send_file(False)

    def do_GET(self):
        self.send_file(True)

    def send_file(self, body):
        path = self.path.split("?")[0]
        data = self.server.files.get(path)
        if data is None:
            self.send_error(404)
            return
        size = len(data)
        start, end = 0, size - 1
        header = self.headers.get("Range")
        tag = '"' + sha256(data).hexdigest() + '"'
        with self.server.lock:
            self.server.requests.append((self.command, self.path, header))
            # Los cortes afectan al cuerpo grande, nunca al manifiesto ni a la solicitud de 1 byte.
            cut = body and size > 65536 and self.server.cuts > 0 and header != "bytes=0-0"
            if cut:
                self.server.cuts -= 1
        if self.server.honor_ranges and header and self.headers.get("If-Range", tag) == tag:
            match = re.fullmatch(r"bytes=(\d+)-(\d*)", header)
            if not match or int(match[1]) >= size:
                self.send_error(416)
                return
            start = int(match[1])
            if match[2]:
                end = min(end, int(match[2]))
            self.send_response(206)
            reported_start = start + 1 if self.server.wrong_range and header != "bytes=0-0" else start
            self.send_header("Content-Range", f"bytes {reported_start}-{end}/{size}")
        else:
            self.send_response(200)
        self.send_header("Accept-Ranges", "bytes")
        self.send_header("ETag", tag)
        self.send_header("Content-Type", "application/vnd.apple.mpegurl" if path.endswith(".m3u8") else "application/octet-stream")
        self.send_header("Content-Length", end - start + 1)
        self.end_headers()
        if not body:
            return
        stop = min(end + 1, start + min(256 * 1024, (end - start + 1) // 2)) if cut else end + 1
        with self.server.lock:
            self.server.active.append(path)
            self.server.max_active = max(self.server.max_active, len(self.server.active))
            self.server.overlap |= "/video" in self.server.active and "/audio" in self.server.active
        try:
            for position in range(start, stop, 16384):
                block = data[position:min(position + 16384, stop)]
                if self.server.rate:
                    time.sleep(len(block) / self.server.rate)
                self.wfile.write(block)
                with self.server.lock:
                    self.server.sent += len(block)
            if cut:
                self.connection.shutdown(socket.SHUT_WR)
        except OSError:
            pass
        finally:
            with self.server.lock:
                self.server.active.remove(path)


@contextmanager
def origin(files, **kwargs):
    with Server(files, **kwargs) as server:
        worker = threading.Thread(target=server.serve_forever, daemon=True)
        worker.start()
        try:
            yield server
        finally:
            server.shutdown()
            worker.join()


def fetch(url, first=None, last=None, target=None):
    headers = {} if first is None else {"Range": f"bytes={first}-{last if last is not None else ''}"}
    with urlopen(Request(url, headers=headers), timeout=35) as response:
        if first is not None:
            assert response.status == 206
        if target is None:
            return response.read()
        while block := response.read(16384):
            target.extend(block)
        return target


def ranges(url, content, count):
    bounds = [len(content) * index // count for index in range(count + 1)]
    with ThreadPoolExecutor(count) as pool:
        return b"".join(pool.map(lambda i: fetch(url, bounds[i], bounds[i + 1] - 1), range(count)))


def verify(url, content):
    assert fetch(url) == content


def measure(label, server, operation):
    with server.lock:
        server.sent = 0
        server.requests.clear()
    start = time.monotonic()
    result = operation()
    print(f"{label:<34} {time.monotonic()-start:6.2f} s  {server.sent:9} bytes  {len(server.requests):2} peticiones{result or ''}", flush=True)


def transfer(scenario):
    with origin({"/video": VIDEO, "/audio": AUDIO}) as server:
        video, audio = server.url + "/video", server.url + "/audio"
        def serial():
            assert fetch(video) == VIDEO
            assert fetch(audio) == AUDIO

        def parallel(count):
            with ThreadPoolExecutor(2) as pool:
                pending = pool.submit(ranges, video, VIDEO, count) if count > 1 else pool.submit(fetch, video)
                assert fetch(audio) == AUDIO
                assert pending.result() == VIDEO

        if scenario != "candidatos":
            measure("Vídeo + audio en serie (base)", server, serial)
            measure("Archivo directo (base)", server, lambda: verify(video, VIDEO))
        if scenario != "base":
            measure("Vídeo + audio simultáneos", server, lambda: parallel(1))
            for count in (3, 4):
                measure(f"Vídeo ({count} rangos) + audio", server, lambda: parallel(count))

    for resume in ([False] if scenario == "base" else [True] if scenario == "candidatos" else [False, True]):
        with origin({"/video": VIDEO}, cuts=1) as server:
            def recover():
                partial = bytearray()
                fetch(server.url + "/video", target=partial)
                assert 0 < len(partial) < len(VIDEO)
                if not resume:
                    partial.clear()
                fetch(server.url + "/video", first=len(partial) if resume else None, target=partial)
                assert partial == VIDEO
            measure("Corte: reanudar" if resume else "Corte: volver a empezar (base)", server, recover)


def fragments(executable, scenario):
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        subprocess.run(["ffmpeg", "-v", "error", "-f", "lavfi", "-i", "testsrc2=size=640x360:rate=24",
                        "-t", "8", "-c:v", "libx264", "-preset", "ultrafast", "-g", "24",
                        "-f", "hls", "-hls_time", "1", "-hls_list_size", "0", str(root / "clip.m3u8")], check=True)
        files = {"/" + file.name: file.read_bytes() for file in root.iterdir()}
        expected = b"".join(files[name] for name in sorted(files) if name.endswith(".ts"))
        configurations = [(1, 1, 20)] if scenario != "candidatos" else []
        if scenario != "base":
            configurations.extend([(4, 4, 35), (8, 4, 35)])
        for jobs, retries, timeout in configurations:
            for cuts in (0, 2):
                with origin(files, rate=256 * 1024, cuts=cuts) as server:
                    def run():
                        output = root / "salida.mp4"
                        process = subprocess.run([executable, "--ignore-config", "--no-playlist", "--quiet",
                                        "--concurrent-fragments", str(jobs), "--retries", str(retries),
                                        "--socket-timeout", str(timeout), "--fixup", "never",
                                        *(["--fragment-retries", str(retries), "--abort-on-unavailable-fragments"] if jobs > 1 else []),
                                        "-o", str(output), server.url + "/clip.m3u8"], capture_output=True, timeout=90)
                        if process.returncode and jobs == 1 and cuts:
                            for partial in root.glob("salida.*"):
                                partial.unlink()
                            return "  (falló)"
                        process.check_returncode()
                        duration = float(subprocess.check_output(["ffprobe", "-v", "error", "-show_entries",
                                          "format=duration", "-of", "csv=p=0", str(output)]))
                        assert 7.9 <= duration <= 8.1, duration
                        assert sha256(output.read_bytes()).digest() == sha256(expected).digest()
                        output.unlink()
                    measure(f"yt-dlp {jobs} fragmentos, {cuts} cortes", server, run)


def java_fetch(classpath, folder, server, tracks, *, success=True, cancel_after=0):
    for track in tracks:
        (folder / track).unlink(missing_ok=True)
    args = [item for track in tracks for item in (track, server.url + "/" + track)]
    process = subprocess.run(["java", "-cp", classpath, "com.brisa.local.RangeTransferDemo",
                              str(folder), str(cancel_after), *args], capture_output=True, timeout=40)
    assert (process.returncode == 0) == success, process.stderr.decode()
    if success:
        for track in tracks:
            assert (folder / track).read_bytes() == server.files["/" + track]


def android_checks(classpath):
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        with origin({"/video": VIDEO, "/audio": AUDIO}, rate=12 * MIB, cuts=2) as server:
            java_fetch(classpath, root, server, ("video", "audio"))
            assert server.overlap and 3 <= server.max_active <= 4, server.requests
            assert server.sent == len(VIDEO) + len(AUDIO) + 1, server.sent
            assert sum(path == "/video" and header is not None for _, path, header in server.requests) >= 4

        with origin({"/video": VIDEO}, rate=0, honor_ranges=False) as server:
            java_fetch(classpath, root, server, ("video",))
            assert server.requests == [("GET", "/video", "bytes=0-0")]
            assert server.sent == len(VIDEO)

        with origin({"/video": VIDEO}, rate=0, wrong_range=True) as server:
            java_fetch(classpath, root, server, ("video",))
            assert ("GET", "/video", None) in server.requests

        with origin({"/audio": AUDIO}, rate=0, cuts=5) as server:
            java_fetch(classpath, root, server, ("audio",), success=False)
            assert not (root / "audio").exists()
            partial = next((root / "parts").glob("*/0.part")).stat().st_size
            assert 0 < partial < len(AUDIO)
            server.cuts = 0
            server.requests.clear()
            java_fetch(classpath, root, server, ("audio",))
            assert server.requests == [("GET", "/audio", f"bytes={partial}-{len(AUDIO)-1}")]
            assert server.sent == len(AUDIO)

        for expired in (False, True):
            with origin({"/audio": AUDIO}, rate=4 * MIB) as server:
                java_fetch(classpath, root, server, ("audio",), success=False, cancel_after=128 * 1024)
                partial = next((root / "parts").glob("*/0.part"))
                if expired:
                    past = time.time() - 7 * 3600
                    os.utime(partial.parent, (past, past))
                else:
                    server.files["/audio"] = AUDIO[::-1]
                server.requests.clear()
                java_fetch(classpath, root, server, ("audio",))
                assert server.requests == [("GET", "/audio", None)] if expired else server.requests[-1][2] is None
    print("RangeTransfer: 6 escenarios HTTP correctos", flush=True)


def android_benchmark(classpath):
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        for cuts in (0, 2):
            with origin({"/video": VIDEO, "/audio": AUDIO}, cuts=cuts) as server:
                measure(f"Android real (JVM), {cuts} cortes", server,
                        lambda: java_fetch(classpath, root, server, ("video", "audio")))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--yt-dlp")
    parser.add_argument("--android-classpath")
    parser.add_argument("--pruebas-android", action="store_true")
    parser.add_argument("--fase", choices=["base", "candidatos", "todo"], default="todo")
    args = parser.parse_args()
    if args.pruebas_android:
        if not args.android_classpath:
            parser.error("--pruebas-android requiere --android-classpath")
        android_checks(args.android_classpath)
        exit(0)
    if args.yt_dlp:
        fragments(args.yt_dlp, args.fase)
    transfer(args.fase)
    if args.android_classpath and args.fase != "base":
        android_benchmark(args.android_classpath)
