function find_star_num(n: number): number {
  if (n === 1) {
    return 1;
  }
  
  let previous = 1;
  let current = 1;
  
  for (let i = 2; i <= n; i++) {
    previous = current;
    current = previous + current;
  }
  
  return current;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th star number.
