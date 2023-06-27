const fs = require('fs');
// {{{ reading files.

const readStream = fs.createReadStream('./docs/blog3.txt', { encoding: 'utf8' });
const writeStream = fs.createWriteStream('./docs/blog4.txt');

readStream.on('data', (chunk) => {
  console.log('New chunk');
  console.log(chunk);

  writeStream.write('\nNEW CHUNK\n');
  writeStream.write(chunk);
})

// Pipping
const readStream2 = fs.createReadStream('./docs/blog5.txt', { encoding: 'utf8' });
const writeStream2 = fs.createWriteStream('./docs/blog6.txt')
readStream2.pipe(writeStream2)
