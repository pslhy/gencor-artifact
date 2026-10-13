
function is_polite(n: number): number {
  const digits = Array.from(String(n)).map((d) => Number(d));
  
  let count = 0;
  for (let i = 0; i < digits.length; i++) {
    if (digits[i] == 0) count++;
    if (digits[i] == digits[i - 1]) count--;
  }
  
  return count;
}

function nth_polite(n: number): number {
  let result = 0;
  let count = 1;
  
  while (count <= n) {
    result++;
    count += is_polite(result);
  }
  
  return result - 1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
