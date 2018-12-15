const logToConsole = msg => {
  // eslint-disable-next-line no-console
  console.log(msg);
};

const message = 'my message to log';
logToConsole(message);

const obj = {
  name: 'mike',
  location: 'seekonk'
};

let name = 'mike';
let butt = 'yes';

function hello() {
  let name = 'mike';
  return name;
}
