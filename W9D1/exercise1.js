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
