function even_binomial_Coeff_Sum(n: number): number {
  let sum = 0;
  for (let i = 0; i < n; i += 2) {
    sum += binomialCoefficient(n, i);
  }
  return sum;
}

function binomialCoefficient(n: number, k: number): number {
  if (k < 0 || k > n) {
    return 0;
  }
  if (k === 0 || k === n) {
    return 1;
  }
  return binomialCoefficient(n - 1, k - 1) + binomialCoefficient(n - 1, k);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
