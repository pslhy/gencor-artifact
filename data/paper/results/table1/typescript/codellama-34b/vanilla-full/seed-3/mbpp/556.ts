function find_Odd_Pair(A: number[], N: number): number {
  let count = 0;
  for (let i = 0; i < N; i++) {
    for (let j = i + 1; j < N; j++) {
      if ((A[i] ^ A[j]) % 2 == 1) {
        count++;
      }
    }
  }
  return count;
}

// Test case 1: 
console.log(find_Odd_Pair([2, 1], 2)); //Output: 1

// Test case 2: 
console.log(find_Odd_Pair([2, 1, 3], 3)); //Output: 2

// Test case 3: 
console.log(find_Odd_Pair([2, 1, 3, 4], 4)); //Output: 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
