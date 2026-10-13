function find_sum(arr: number[]): number {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] !== arr[i - 1] && arr[i] !== arr[i + 1]) {
      sum += arr[i];
    }
  }
  return sum;
}

/* Explanation:

The solution is based on the observation that if a number is repeated, it will be in the same place as the number that comes before it or after it.

The function iterates through the array and checks if the current element is equal to the previous element or the next element. If it is not, it adds the element to the sum.
*/

// Example usage:
let arr = [1, 2, 3, 2, 1];
console.log(find_sum(arr)); // Output: 6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
