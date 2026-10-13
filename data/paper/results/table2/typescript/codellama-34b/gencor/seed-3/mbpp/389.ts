
function find_lucas(n: number): number {
  if(n < 0){
      return 0;
  }
  let a = 2;
  let b = 1;
  for(let i = 1; i < n; i++){
      [a, b] = [b, a + b];
  }
  return a;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
