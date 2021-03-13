const readline = require("readline");
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function addNumbers(sum, numsLeft, completionCallback) {
  
  if (numsLeft > 0) {
    reader.question('Insert number', function (num) {
      
        let int = parseInt(num);
      sum += int;
      console.log(sum);
      addNumbers(sum, numsLeft - 1, completionCallback);
    })
  } else if (numsLeft === 0) {
    completionCallback(sum);
    reader.close()
  }

}

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));
