function even_binomial_Coeff_Sum(n: number): number {
  let sum = 0;
  for (let k = 0; k < n; k += 2) {
    sum += binomialCoeff(n, k);
  }
  return sum;
}

function binomialCoeff(n: number, k: number): number {
  if (k < 0 || k > n) {
    return 0;
  }
  if (k > n - k) {
    k = n - k;
  }
  let res = 1;
  for (let i = 0; i < k; i++) {
    res *= n - i;
    res /= i + 1;
  }
  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a positive integer n and finds the sum of even index binomial coefficients.
