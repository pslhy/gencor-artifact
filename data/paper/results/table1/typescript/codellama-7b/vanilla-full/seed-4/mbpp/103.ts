function eulerian_num(n: number, m: number): number {
  if (n == 1 || m == 1) {
    return 1;
  }

  let a = 0;
  for (let k = 1; k <= n; k++) {
    const left_product = factorial(k);
    const right_product = factorial(n - k + 1);
    a += left_product * right_product;
  }

  return a;
}

function factorial(n: number): number {
  if (n == 1) {
    return 1;
  }

  let product = 1;
  for (let k = 2; k <= n; k++) {
    product *= k;
  }

  return product;
}

export { eulerian_num };


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
