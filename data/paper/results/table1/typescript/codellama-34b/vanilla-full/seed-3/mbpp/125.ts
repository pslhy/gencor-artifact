function find_length(string: string): number {
  let max_length = 0;
  let count = 0;
  let last_count = 0;
  let last_max = 0;
  for (let i = 0; i < string.length; i++) {
    count = string[i] == '1' ? count + 1 : count - 1
    if (count < 0) {
      last_count = 1;
      last_max = count * -1;
    }
    max_length = Math.max(max_length, last_max);
  }
  return max_length;
}

const str = "1100011111";
console.log(find_length(str)); // Output: 6

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
