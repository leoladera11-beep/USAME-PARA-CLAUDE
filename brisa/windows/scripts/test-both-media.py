"""Check codec arguments with host FFmpeg; this does not run the Windows engines."""
import hashlib,json,subprocess,tempfile
from pathlib import Path
project=Path(__file__).resolve().parents[1]
def ff(*args):subprocess.run(['ffmpeg','-v','error','-nostdin',*map(str,args)],check=True)
def probe(path):return json.loads(subprocess.check_output(['ffprobe','-v','error','-show_entries','stream=codec_name,codec_type,sample_rate,bit_rate','-of','json',str(path)]))['streams']
with tempfile.TemporaryDirectory(prefix='brisa-both-media-') as directory:
 root=Path(directory);source=root/'source.mp4';audio=root/'complete.mp3'
 ff('-i',project/'tests/fixtures/h264.mp4','-i',project/'tests/fixtures/tone.wav','-c:v','copy','-c:a','aac','-shortest','-y',source)
 digest=hashlib.sha256(source.read_bytes()).hexdigest()
 ff('-i',source,'-map','0:a:0','-vn','-c:a','libmp3lame','-b:a','320k','-compression_level','0','-threads','1','-map_metadata','0','-y',audio)
 assert hashlib.sha256(source.read_bytes()).hexdigest()==digest
 before=next(s for s in probe(source) if s['codec_type']=='audio');after=probe(audio)
 assert len(after)==1 and after[0]['codec_name']=='mp3'
 assert after[0]['bit_rate']=='320000' and after[0]['sample_rate']==before['sample_rate']
 print('PASS: source video unchanged; separate MP3 320000 bit/s; source sample rate preserved.')
 direct=root/'direct.webm';remux=root/'complete.mp4'
 ff('-f','lavfi','-i','color=s=64x64:r=5:d=0.4','-f','lavfi','-i','sine=frequency=440:sample_rate=48000:duration=0.4','-c:v','libvpx-vp9','-c:a','libopus','-shortest','-y',direct)
 ff('-i',direct,'-map','0:v:0','-map','0:a:0?','-c','copy','-map_metadata','0','-y',remux)
 assert [s['codec_name'] for s in probe(direct)]==[s['codec_name'] for s in probe(remux)]
 print('PASS: direct WebM remuxed to MP4 with original VP9/Opus codecs.')
