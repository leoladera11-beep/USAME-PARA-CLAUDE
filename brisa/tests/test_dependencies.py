import hashlib,importlib.util,io,tempfile,unittest
from pathlib import Path
module_path=Path(__file__).resolve().parents[1]/'tools/descargar-dependencias.py'
spec=importlib.util.spec_from_file_location('brisa_dependencies',module_path)
deps=importlib.util.module_from_spec(spec);spec.loader.exec_module(deps)
class Reply(io.BytesIO):
 def geturl(self):return 'https://example.test/engine'
class DownloadTests(unittest.TestCase):
 def setUp(self):
  self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name);self.body=b'engine-bytes'*14000
  self.file={'path':'windows/resources/engine.exe','url':'https://example.test/engine','size':len(self.body),'sha256':hashlib.sha256(self.body).hexdigest()}
 def tearDown(self):self.temp.cleanup()
 def test_complete_verified_download(self):
  p=deps.fetch_one(self.root,self.file,lambda *a,**k:Reply(self.body));self.assertEqual(p.read_bytes(),self.body)
 def test_valid_cached_file_needs_no_network(self):
  p=self.root/self.file['path'];p.parent.mkdir(parents=True);p.write_bytes(self.body)
  self.assertEqual(deps.fetch_one(self.root,self.file,lambda *a,**k:self.fail('Network used')),p)
 def test_corrupt_download_preserves_previous_and_removes_partial(self):
  p=self.root/self.file['path'];p.parent.mkdir(parents=True);p.write_bytes(b'previous')
  with self.assertRaises(ValueError):deps.fetch_one(self.root,self.file,lambda *a,**k:Reply(b'x'*len(self.body)))
  self.assertEqual(p.read_bytes(),b'previous');self.assertFalse(Path(str(p)+'.part').exists())
 def test_truncated_download_is_not_published(self):
  with self.assertRaises(ValueError):deps.fetch_one(self.root,self.file,lambda *a,**k:Reply(self.body[:-1]))
  self.assertFalse((self.root/self.file['path']).exists())
 def test_excess_size_is_rejected(self):
  with self.assertRaises(ValueError):deps.fetch_one(self.root,self.file,lambda *a,**k:Reply(self.body+b'x'))
 def test_path_outside_project_is_rejected(self):
  for path in ['../engine.exe','/engine.exe']:
   with self.assertRaises(ValueError):deps.fetch_one(self.root,{**self.file,'path':path},lambda *a,**k:self.fail('Network used'))
 def test_network_failure_cleans_partial(self):
  class Broken(Reply):
   def read(self,*a):raise OSError('Connection interrupted')
  with self.assertRaises(OSError):deps.fetch_one(self.root,self.file,lambda *a,**k:Broken(self.body))
  self.assertFalse((self.root/self.file['path']).exists());self.assertFalse((self.root/(self.file['path']+'.part')).exists())
if __name__=='__main__':unittest.main()
