function is_undulating(n: number): boolean {
  if(n < 2) {
    return false;
  }
  let sum = 0;
  for(let i = 2; i <= n; i++) {
    sum += Math.pow(n, 2) - i * n;
  }
  return sum === 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
