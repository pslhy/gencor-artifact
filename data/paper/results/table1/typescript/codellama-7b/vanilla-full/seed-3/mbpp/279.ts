function is_num_decagonal(n: number): number {
  if(n < 1) {
    return false;
  }
  let sum: number = 0;
  for(let i: number = 1; i <= Math.sqrt(n); i++) {
    if((n % i) === 0) {
      sum += i;
    }
  }
  return (sum === n);
}
// Solution code goes here. 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth decagonal number.
