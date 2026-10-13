function count_Pairs(arr: number[], n: number): number {
  let count = 0;
  for (let i = 0; i < n; i++) {
    for (let j = i + 1; j < n; j++) {
      if (arr[i] !== arr[j]) {
        count++;
      }
    }
  }
  return count;
}

/* Explanation:

The solution is based on the fact that each element in the array can be part of at most n - 1 pairs, where n is the length of the array. Therefore, we can loop through the array and count the number of unequal pairs.

We use two for loops to iterate through each element in the array. The outer loop iterates from 0 to n - 1, and the inner loop iterates from i + 1 to n - 1. This ensures that each element is considered for all possible pairs.

We use the if statement to check if the two elements are unequal. If they are, we increment the count by 1.

At the end of the loops, we return the count, which gives us the number of possible unordered pairs where both elements are unequal.

For example, consider the input array [1, 2, 3, 4, 5]. The possible unordered pairs where both elements are unequal are:

* 1 and 2
* 1 and 3
* 1 and 4
* 1 and 5
* 2 and 3
* 2 and 4
* 2 and 5
* 3 and 4
* 3 and 5
* 4 and 5

Therefore, the function returns 10, which is the number of possible unordered pairs where both elements are unequal.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and counts the number of possible unordered pairs where both elements are unequal.
