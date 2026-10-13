function find_length(string: string): number {
  let count0 = 0
  let count1 = 0
  for (const char of string.split('')) {
    if (char === '0') {
      count0++
    } else {
      count1++
    }
  }
  return Math.max(count0 - count1, count1 - count0)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
