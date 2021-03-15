// Function.prototype.inherits = function(parent) {
//   let Surrogate = function() {};
//   Surrogate.prototype = parent.prototype;
//   this.prototype = new Surrogate();
//   this.prototype.constructor = this;
// };

Function.prototype.inherits = function(parent) {
  this.prototype = Object.create(parent.prototype);
  this.prototype.constructor = this;
};

function MovingObject (name, action) {
  this.name = name;
  this.action = action;
}

MovingObject.prototype.movement = function() {
  console.log(`${this.name} is ${this.action}ing!`);
};

function Ship (name, action) {
  MovingObject.call(this, name, action); // same as super(name, action) for ES6
}
Ship.inherits(MovingObject); // Ship is inheriting MovingObject
const titanic = new Ship('Titanic', 'sink');

function Asteroid (name, action) {
  MovingObject.call(this, name, action);
}
Asteroid.inherits(MovingObject);
const elon = new Asteroid('Elon', 'musk');

titanic.movement();
elon.movement();

// const test = new MovingObject('Thing', 'exist');
// test.movement();
