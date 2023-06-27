const http = require('http');
const fs = require('fs');

const server = http.createServer((req, res) => {
  console.log(req.url, req.method);

  res.setHeader('Content-Type', 'text/html');

  let page = './views/';
  switch(req.url) {
    case '/':
      page += 'index'
      res.statusCode = 200;
      break;
    case '/about':
      page += 'about'
      res.statusCode = 200;
      break;
    case '/about-me':
      page += 'about'
      res.statusCode = 301;
      res.setHeader('Location', '/about')
      res.end()
      break;
    default:
      page += '404'
      res.statusCode = 404;
      break;
  }
  page += '.html'

  fs.readFile(page, (err, data) => {
    if (err) { console.log(err);
    }
    else {
      res.write(data);
    }
    res.end();
  })
});

server.listen(3000, 'localhost', () => {
  console.log('Listening for requests on port 3000.')
});
