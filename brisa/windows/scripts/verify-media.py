#!/usr/bin/env python3
"""Check that remuxing preserves every compressed audio/video packet."""
import json
import pathlib
import subprocess

root = pathlib.Path(__file__).resolve().parents[1] / 'tests' / 'fixtures'
def packet_hashes(path, stream):
    output = subprocess.check_output(['ffprobe', '-v', 'error', '-select_streams', stream,
        '-show_packets', '-show_data_hash', 'sha256', '-show_entries', 'packet=data_hash', '-of', 'json', str(path)])
    return [packet['data_hash'] for packet in json.loads(output)['packets']]

checks = [
    ('h264.mp4', 'aac.m4a', 'android-h264.mp4'),
    ('vp9.webm', 'opus.webm', 'android-vp9.mp4'),
    ('h264.mp4', 'aac.m4a', 'desktop-h264.mp4'),
    ('vp9.webm', 'opus.webm', 'desktop-vp9.mp4'),
    ('h264-4k.mp4', 'aac.m4a', 'android-4k.mp4'),
    ('av1.webm', 'opus.webm', 'android-av1.mp4'),
    ('av1.webm', 'opus.webm', 'desktop-av1.mp4'),
]
for video, audio, result in checks:
    for original, stream in [(video, 'v:0'), (audio, 'a:0')]:
        before = packet_hashes(root / original, stream)
        after = packet_hashes(root / result, stream)
        assert before and before == after, f'{result}: {stream} changed ({len(before)} -> {len(after)} packets)'
        print(f'PASS {result}: {stream}, {len(before)} compressed packets unchanged')
