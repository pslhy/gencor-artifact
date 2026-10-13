function max_sum(arr: number[]): number {
  let n = arr.length;

  // `inc` and `dec` array to store maximum sum till index i in increasing and decreasing sequence respectively
  let inc = new Array(n).fill(0);
  let dec = new Array(n).fill(0);

  inc[0] = arr[0];
  dec[n - 1] = arr[n - 1];

  // update `inc`[] and `dec`[]
  for (let i = 1; i < n; i++) {
    if (arr[i] > arr[i - 1]) {
      inc[i] = Math.max(inc[i - 1] + arr[i], arr[i]);
    } else {
      inc[i] = arr[i];
    }

    let j = n - 1 - i;
    if (arr[j] > arr[j + 1]) {
      dec[j] = Math.max(dec[j + 1] + arr[j], arr[j]);
    } else {
      dec[j] = arr[j];
    }
  }

  let max = Math.max(...inc);

  // update the max (max repeating bitonic sequence)
  for (let i = 1; i < n - 1; i++) {
    if (inc[i - 1] > 0 && dec[i + 1] > 0) {
      max = Math.max(max, inc[i - 1] + dec[i + 1] + arr[i]);
    }
  }

  max = Math.max(max, Math.max(...inc), Math.max(...dec));

  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
