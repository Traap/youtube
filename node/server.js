const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.write("Shoutout to Brian Kernighan: Hello World!\n");
  res.write("Fibonacci sequence using recursion in Nodejs:\n");
  res.end('Hello World\n');
});

server.listen(port, hostname, () => {
});
  console.log(`Server running at http://${hostname}:${port}/`);

