console.log(__dirname);
console.log(__filename);

setTimeout(() => {
  console.log('In the timeout');
  clearTimeout(noisyMsg)
}, 3000);

const noisyMsg = setInterval(() => {
  console.log('..Noisy message.')
}, 1000);

