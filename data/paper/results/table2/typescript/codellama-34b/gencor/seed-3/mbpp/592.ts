
function sum_Of_product(n: number): number {
  if(n < 0){
      return 0;
  }
  let sum = 0;
  for(let i = 0; i<= n; i++){
      sum += (Math.pow(2,i) * i);
  }
  return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
