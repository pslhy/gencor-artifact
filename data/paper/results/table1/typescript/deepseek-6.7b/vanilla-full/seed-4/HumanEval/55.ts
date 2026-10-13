function fib(n: number): number {
  if (n <= 2) {
    return 1;
  }
  let fibNums = [1, 1];
  for (let i = 2; i < n; i++) {
    fibNums.push(fibNums[i - 1] + fibNums[i - 2]);
  }
  return fibNums[n - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return n-th Fibonacci number.
//     >>> fib(10)
//     55
//     >>> fib(1)
//     1
//     >>> fib(8)
//     21
