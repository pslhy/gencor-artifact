
function eulerian_num(n: number, m: number): number {
  if (n == 1 || m == 1) {
    return 1;
  }

  let a = 0;
  for (let k = 1; k <= n; k++) {
    const left_product = eulerian_num(k, m);
    const right_product = eulerian_num(n - k, m);
    a = (a + left_product * right_product) % 1000000007;
  }

  return a;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
