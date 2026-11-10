#!/usr/bin/env python3
"""Restore exact third-party files omitted from the lightweight package."""
import argparse,hashlib,json,os
from pathlib import Path,PurePosixPath
from urllib.request import urlopen

def digest(path):
 h=hashlib.sha256()
 with path.open('rb') as f:
  for chunk in iter(lambda:f.read(131072),b''):h.update(chunk)
 return h.hexdigest()

def fetch_one(root,spec,opener=urlopen):
 relative=PurePosixPath(spec['path'])
 if relative.is_absolute() or '..' in relative.parts:raise ValueError('Destino no valido.')
 root=Path(root).resolve();target=root.joinpath(*relative.parts)
 if not target.resolve().is_relative_to(root):raise ValueError('Destino fuera del proyecto.')
 if target.is_file() and target.stat().st_size==spec['size'] and digest(target)==spec['sha256']:return target
 if not spec['url'].startswith('https://'):raise ValueError('La descarga requiere HTTPS.')
 target.parent.mkdir(parents=True,exist_ok=True);part=target.with_name(target.name+'.part')
 try:
  h=hashlib.sha256();size=0
  with opener(spec['url'],timeout=90) as response,part.open('wb') as f:
   if not response.geturl().startswith('https://'):raise ValueError('Redireccion no HTTPS.')
   while True:
    chunk=response.read(131072)
    if not chunk:break
    size+=len(chunk)
    if size>spec['size']:raise ValueError('La descarga excede el tamano esperado.')
    h.update(chunk);f.write(chunk)
   f.flush();os.fsync(f.fileno())
  if size!=spec['size'] or h.hexdigest()!=spec['sha256']:raise ValueError('El archivo no coincide con su SHA-256. No se usara.')
  part.replace(target);return target
 finally:
  part.unlink(missing_ok=True)

def main():
 parser=argparse.ArgumentParser(description=__doc__)
 parser.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1])
 parser.add_argument('--solo-motor',action='store_true',help='Solo prepara yt-dlp; omite las fuentes FFmpeg.')
 args=parser.parse_args()
 catalog=json.loads((Path(__file__).resolve().parents[1]/'DEPENDENCIAS-LIGERAS.json').read_text())
 for name,spec in catalog.items():
  if args.solo_motor and name!='yt-dlp':continue
  print('Preparando '+name+'...')
  print('Verificado: '+str(fetch_one(args.root,spec)))
if __name__=='__main__':main()
