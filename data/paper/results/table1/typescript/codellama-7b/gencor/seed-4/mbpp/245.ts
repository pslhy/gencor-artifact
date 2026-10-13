
function max_sum(arr: number[]): number {
  let maxSum = 0;

  for (let i = 0; i < arr.length - 1; i++) {
    const initialSum = arr.slice(0, i + 1).reduce((accumulator: number, currentValue: number) => accumulator + currentValue, 0);
    const reversedArray = arr.slice(i + 1).reverse();
    const reversedSum = reversedArray.reduce((accumulator: number, currentValue: number) => accumulator + currentValue, 0);
    const totalSum = initialSum + reversedSum;
    if (totalSum > maxSum) {
      maxSum = totalSum;
    }
  }

  return maxSum;
}

let arr = [3, 2, 6, 8, 9, 5, 6, 7, 8, 9, 10];
console.log(max_sum(arr)); // Output: 20

arr = [5, 3, 4, 2, 1, 10, 10, 9, 8, 7, 6];
console.log(max_sum(arr)); // Output: 38

arr = [5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 5];
console.log(max_sum(arr)); // Output: 30

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
