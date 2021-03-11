Array.prototype.twoSum = function(){
    let arr = this;
    let result = [];
    for (let i = 0; i < arr.length - 1; i++){
        for (let j = i+1; j < arr.length; j++){
            if (arr[i] + arr[j] === 0){
             result.push([i,j]);
            }
        }
    }
    return result
}