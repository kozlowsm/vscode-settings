/* eslint-disable no-console */
const logToConsole = msg => {
  console.log(msg);
};

const message = 'my message to log';
logToConsole(message);

const obj = {
  name: 'mike',
  location: 'seekonk',
};

const name = 'mike';
const butt = 'yes';

function hello() {
  const firstName = 'mike';
  return firstName;
}

console.log(name, butt);
console.log(hello());
console.log(obj);
