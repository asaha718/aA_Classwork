//this is a asynchronous function
// window.setTimeout(function() {
//     console.log("Hammertime"); //  or alert("HAMMER TIME")
// }, 5000); 


// function hammerTime (time){
//     window.setTimeout(function() {
//         alert(`${time} is hammertime!`); //  alert does a pop up 
//     });
// } 


// function teaAndBiscuits() {
//     const readline= require('readline'); 
//     const reader = readline.createInterface({
//         input: process.stdin, 
//         output: process.stdout
//     });
// }

const readline = require('readline');

const reader = readline.createInterface({
  // it's okay if this part is magic; it just says that we want to
  // 1. output the prompt to the standard output (console)
  // 2. read input from the standard input (again, console)

  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question('Would you like some tea?', function (res) {
    console.log(`You replied ${res}.`);
    reader.question('Would you like some biscuits?', function (res2) {
      console.log(`You replied ${res2}.`);
      
      const first = (res === 'yes') ? 'do' : 'don\'t';
      const second = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${first} want tea and you ${second} want biscuits.`);
      reader.close();
    });
  });
}

console.log(teaAndBiscuits) 