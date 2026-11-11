#!/usr/bin/env python3
"""Prepare static download assets from the supplied release packages."""
from pathlib import Path
import argparse,hashlib,json,shutil,struct,zipfile
p=argparse.ArgumentParser()
p.add_argument('--site',type=Path,required=True)
p.add_argument('--windows',type=Path,required=True)
p.add_argument('--f8',type=Path,required=True)
p.add_argument('--a30',type=Path,required=True)
p.add_argument('--share',type=Path)
a=p.parse_args();a.site.mkdir(parents=True,exist_ok=True)
def package(file,manifest,prefix):
 data=file.read_bytes();parts=[]
 for index,start in enumerate(range(0,len(data),15*1024*1024)):
  chunk=data[start:start+15*1024*1024];name=f'package-{prefix}{index+1:03d}.bin'
  (a.site/name).write_bytes(chunk);parts.append({'file':name,'size':len(chunk)})
 (a.site/manifest).write_text(json.dumps({'name':file.name,'size':len(data),'sha256':hashlib.sha256(data).hexdigest(),'parts':parts},indent=2))
package(a.windows,'package.json','302')
if a.share:
 data=a.share.read_bytes();reused=False
 with zipfile.ZipFile(a.share) as z:
  match=next((i for i in z.infolist() if i.filename.endswith('/'+a.windows.name) and i.compress_type==zipfile.ZIP_STORED),None)
  if match:
   start=match.header_offset+30+sum(struct.unpack_from('<HH',data,match.header_offset+26));end=start+match.file_size
   if data[start:end]==a.windows.read_bytes():
    parts=[];counter=0
    def segments(content):
     global counter
     for offset in range(0,len(content),15*1024*1024):
      counter+=1;chunk=content[offset:offset+15*1024*1024];name=f'package-500{counter:03d}.bin';(a.site/name).write_bytes(chunk);parts.append({'file':name,'size':len(chunk)})
    segments(data[:start]);parts.extend(json.loads((a.site/'package.json').read_text())['parts']);segments(data[end:])
    (a.site/'share-package.json').write_text(json.dumps({'name':a.share.name,'size':len(data),'sha256':hashlib.sha256(data).hexdigest(),'parts':parts},indent=2));reused=True
 if not reused:package(a.share,'share-package.json','500')
for file in [a.f8,a.a30]:shutil.copyfile(file,a.site/file.name)
print('Static assets ready. Serve the directory over HTTPS.')
