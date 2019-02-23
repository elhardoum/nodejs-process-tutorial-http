const HTTP_PORT = 8081, HTTP_HOST = 'localhost',

server = require('http').createServer((req, res) =>
{
  console.log( `Incoming request at ${req.url}` )

  res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' })
  res.end('Hello from server.js!')
  
  if ( 'POST' === req.method ) { test() }
})

server.listen(HTTP_PORT, HTTP_HOST, _ => console.log(`Server running at http://${HTTP_HOST}:${HTTP_PORT}/`))
