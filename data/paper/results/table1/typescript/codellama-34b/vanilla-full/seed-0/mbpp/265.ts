function list_split(S: any[], step: number): any[][] {
  const res = [];
  for (let i = 0; i < S.length; i += step) {
    res.push(S.slice(i, i + step));
  }
  return res;
}

const arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
console.log(list_split(arr, 3)); // [[1, 2, 3], [4, 5, 6], [7, 8, 9]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n and splits an array for every nth element, returning an array of the resulting arrays.
