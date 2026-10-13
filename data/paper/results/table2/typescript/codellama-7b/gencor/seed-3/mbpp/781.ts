
function count_divisors(n: number): boolean {
  let d = 1;
  for (let i = 1; i <= n; i++) {
    if (n % i === 0) d++;
  }
  return d % 2 === 0;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the count of divisors is even. https://www.w3resource.com/tsthon-exercises/basic/tsthon-basic-1-exercise-24.php
