function find_sum(arr: number[]): number {
  let sum: number = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr.indexOf(arr[i]) === arr.lastIndexOf(arr[i])) {
      sum += arr[i];
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
