
function cal_sum(n: number): number {
  const perrinNumbers: number[] = [];
  let sum = 0;
  
  for (let i = 1; i <= n; i++) {
    perrinNumbers.push(i);
  }
  
  for (let i = 0; i < perrinNumbers.length; i++) {
    sum += perrinNumbers[i];
  }
  
  return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
