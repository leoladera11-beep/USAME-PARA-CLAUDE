use brisa_host_tests::download_resume;
use std::{fs, io::{BufRead, BufReader, Write}, net::TcpListener, path::{Path, PathBuf}, thread, time::{Duration, SystemTime}};

struct Fixture(PathBuf);
impl Fixture {
    fn new() -> Self {
        let stamp = SystemTime::now().duration_since(SystemTime::UNIX_EPOCH).unwrap().as_nanos();
        let root = std::env::temp_dir().join(format!("brisa-descarga-{}-{stamp}", std::process::id()));
        Self(download_resume::prepare(&root, "enlace").unwrap())
    }
}
impl Drop for Fixture {
    fn drop(&mut self) { let _ = fs::remove_dir_all(self.0.parent().unwrap().parent().unwrap()); }
}

struct Reply<'a> {
    status: &'a str,
    headers: &'a str,
    body: &'a str,
}

fn server(replies: Vec<Reply<'static>>) -> (String, thread::JoinHandle<Vec<String>>) {
    let socket = TcpListener::bind("127.0.0.1:0").unwrap();
    let url = format!("http://{}/video.mp4", socket.local_addr().unwrap());
    let worker = thread::spawn(move || {
        let mut requests = Vec::new();
        for reply in replies {
            let (mut stream, _) = socket.accept().unwrap();
            stream.set_read_timeout(Some(Duration::from_secs(5))).unwrap();
            let mut reader = BufReader::new(&stream);
            let mut request = String::new();
            loop {
                let mut line = String::new();
                if reader.read_line(&mut line).unwrap() == 0 || line == "\r\n" { break; }
                request.push_str(&line);
            }
            requests.push(request);
            write!(stream, "HTTP/1.1 {}\r\nConnection: close\r\n{}\r\n{}", reply.status, reply.headers, reply.body).unwrap();
        }
        requests
    });
    (url, worker)
}

async fn fetch(dir: &Path, url: &str) -> Result<Vec<u8>, String> {
    let client = reqwest::Client::builder().no_proxy().timeout(Duration::from_secs(5)).build().unwrap();
    let file = download_resume::direct(dir, |partial| {
        let mut request = client.get(url);
        if let Some((etag, offset)) = partial {
            request = request.header("Range", format!("bytes={offset}-")).header("If-Range", etag);
        }
        async move { request.send().await.map_err(|error| error.to_string()) }
    }, |_, _| {}).await?;
    Ok(fs::read(file).unwrap())
}

#[tokio::test]
async fn un_corte_reanuda_solo_los_bytes_pendientes() {
    let fixture = Fixture::new();
    let (url, worker) = server(vec![
        Reply { status: "200 OK", headers: "Content-Length: 10\r\nETag: \"v1\"\r\n", body: "01234" },
        Reply { status: "206 Partial Content", headers: "Content-Length: 5\r\nETag: \"v1\"\r\nContent-Range: bytes 5-9/10\r\n", body: "56789" },
    ]);
    assert_eq!(fetch(&fixture.0, &url).await.unwrap(), b"0123456789");
    let requests = worker.join().unwrap();
    assert!(requests[1].contains("range: bytes=5-"));
    assert!(requests[1].contains("if-range: \"v1\""));
}

#[tokio::test]
async fn respuesta_incompatible_descarta_el_parcial_antes_de_guardar() {
    let fixture = Fixture::new();
    let (url, worker) = server(vec![
        Reply { status: "200 OK", headers: "Content-Length: 10\r\nETag: \"v1\"\r\n", body: "01234" },
        Reply { status: "206 Partial Content", headers: "Content-Length: 5\r\nETag: \"v2\"\r\nContent-Range: bytes 5-9/10\r\n", body: "xxxxx" },
        Reply { status: "200 OK", headers: "Content-Length: 10\r\nETag: \"v2\"\r\n", body: "abcdefghij" },
    ]);
    assert_eq!(fetch(&fixture.0, &url).await.unwrap(), b"abcdefghij");
    let requests = worker.join().unwrap();
    assert!(requests[1].contains("range: bytes=5-"));
    assert!(!requests[2].contains("range:"));
}
