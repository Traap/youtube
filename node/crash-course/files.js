const fs = require('fs')
// {{{ reading files.

fs.readFile('./docs/blog2.txt', (err, data) => {
  if (err) {
    coneole.log(err);
  }
  console.log(data);
  console.log(data.toString());
})
console.log('After fileRead and before async operation completes.');

// ------------------------------------------------------------------------- }}}
// {{{ writing files.

fs.writeFile('./docs/blog2.txt', 'Shoutout to Brian Kernighan: Hello World!', (err, data) => {
  if (err) {
    coneole.log(err);
  }
  console.log('File was written.');
})
console.log('After fileWrite and before async operation completes.');

// ------------------------------------------------------------------------- }}}
// {{{ directories.

if (!fs.existsSync('./assets')) {
  fs.mkdir('./assets', (err) => {
    if (err) {
      console.log(err);
    }
    console.log('Folder was created');
  })
  console.log('After mkdir and before async operation completes.');
}
else {
  console.log("Folder already exists!")
  fs.rmdir('./assets', (err) => {
    if (err) {
      console.log(err)
    }
    console.log('Folder was deleted.');
  })
  console.log('After rmdir and before async operation completes.');
}

// ------------------------------------------------------------------------- }}}
// {{{ deleting files

if (fs.existsSync('./docs/deleteme.txt')) {
  fs.unlink('./docs/deleteme.txt', (err) => {
    if (err) {
      console.log(err);
    }
    console.log('File was deleted.');
  })
  console.log('After unlink and before async operation completes.');
}
else {
  fs.writeFile('./docs/deleteme.txt', 'DELETEME', (err, data) => {
    if (err) {
      coneole.log(err);
    }
    console.log('File was written.');
  })
  console.log('After fileWrite and before async operation completes.');
}

// ------------------------------------------------------------------------- }}}
