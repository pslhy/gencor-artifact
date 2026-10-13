
function find_length(string: string): number {
  const zeros = Array(string.length).fill(0);
  const ones = Array(string.length).fill(0);

  for (let i = 0; i < string.length; i++) {
    if (string[i] === "0") {
      zeros[i]++;
    } else {
      ones[i]++;
    }
  }

  const maxDiff = Math.max(...zeros.map((val, i) => ones[i] - val));
  return maxDiff;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
