function greatestNumber(array) {
    let a=0;
    for (let i of array) {
        if (a < i) {
            a = i;
        }
    }
    return a;
  }
  

  let array = [5, 10, 3, 8, 2];
  let result = greatestNumber(array);
  console.log(result); 