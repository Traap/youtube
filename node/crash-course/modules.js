const xyz = require('./people');
console.log('requrie format 1')
console.log(xyz.people, xyz.ages);

const { people, ages } = require('./people');
console.log('requrie format 2')
console.log(people, ages)

const os = require('os');
console.log('Require os');
console.log(os.platform());
console.log(os.homedir());
