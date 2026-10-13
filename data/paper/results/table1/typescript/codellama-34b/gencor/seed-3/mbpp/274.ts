
function even_binomial_Coeff_Sum(n: number): number {
  if(n < 0){
      throw new Error("n must be a positive integer")
  }
  let result: number = 0;
  for(let i = 1; i <= n; i++){
      if((i % 2) == 0){
          continue;
      }
      result += Math.pow(i, 2);
  }
  return result; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
