function sum(){ 
    let args= Array.prototype.slice.call(arguments); // Array.prototype.slice.call converts to Array 
    let result = 0;  
    args.forEach((ele) => {
        result += ele; 
    })
    return result; 
}

function sumTwo(...args){ 
    let result = 0;  
    args.forEach((ele) => {
        result += ele; 
    })
    return result; 
}

// console.log(sum(1, 2, 3, 4, 5))

// Function.prototype.myBind = function(arg) {
//   let args = Array.from(arguments).slice(1);
//   let context = arg;
//   let that = this;
//   return function() {
//     let callArgs= Array.prototype.slice.call(arguments);
//     that.apply(context, args.concat(callArgs));
//   }
// };

Function.prototype.myBind = function(arg, ...args) {
  // let args = Array.from(arguments).slice(1);
  let context = arg;
  let that = this;
  return function(...callArgs) {
    // let callArgs= Array.prototype.slice.call(arguments);
    that.apply(context, args.concat(callArgs));
  }
};

class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

markov.says("meow", "Ned");
// Markov says meow to Ned!
// true

// bind time args are "meow" and "Kush", no call time args
markov.says.myBind(pavlov, "meow", "Kush")();
// Pavlov says meow to Kush!
// true

// no bind time args (other than context), call time args are "meow" and "a tree"
markov.says.myBind(pavlov)("meow", "a tree");
// Pavlov says meow to a tree!
// true

// bind time arg is "meow", call time arg is "Markov"
markov.says.myBind(pavlov, "meow")("Markov");
// Pavlov says meow to Markov!
// true

// no bind time args (other than context), call time args are "meow" and "me"
const notMarkovSays = markov.says.myBind(pavlov);
notMarkovSays("meow", "me");
// Pavlov says meow to me!
// true