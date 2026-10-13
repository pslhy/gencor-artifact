function tuple_to_dict(test_tup: [number, number, number, number, number, number]): {[key: number]: number} {
    let result = test_tup;
    let i = 0;
    let dict = [];
    while (i < result[1]*2) {
         if (result[3]*2 === i) {
             result = [result[2], result[3], result[4], result[5], result[0], result[1]];
         } else if (result[5]*2 === i) {
             result = [result[4], result[5], result[0], result[1], result[2], result[3]];
         } else if (result[0]*2 === i) {
             result = [result[3], result[0], result[1], result[2], result[4], result[5]];
         } 
         dict[i] = result[0];
         i += 2;
    }
    return dict as {[key: number]: number};
}

// Testing
let test_tup = [2, 3, 1, 4, 5, 6];

let result = tuple_to_dict(test_tup as [number, number, number, number, number, number]);

// print result
for(let key of Object.keys(result)) {
    if(key !== '0') {
      if(Number(key)%2 === 1)
        continue;
    }
    let val = result[Number(key)];
    let next = result[Number(key) + 2];
    if(next === undefined)
    next = result[2];
    let res = `{${key}: ${val}, ${Number(key) + 2}: ${next}}`
    if (key === '0') res = '{' + res.slice(1);
    if (Number(key) === test_tup[0] * 2) res = res.slice(0, res.length - 2) + '}';
    else res = res + ', ';
    if(Number(key)%4===0) res = '\n' + res;
    // console.log(Number(key)%4);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given array to a key-value object using adjacent elements. https://www.geeksforgeeks.org/tsthon-convert-array-to-adjacent-pair-object/