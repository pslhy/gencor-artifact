function fibfib(n: number): number {
  if (n === 0 || n === 1 || n === 2) {
    return 0;
  }

  var fib1 = 0;
  var fib2 = 0;
  var fib3 = 0;

  for (let i = 2; i < n; i++) {
    fib3 = fib1 + fib2 + fib3;
    fib1 = fib2;
    fib2 = fib3;
  }

  return fib3;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
//     fibfib(0) == 0
//     fibfib(1) == 0
//     fibfib(2) == 1
//     fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
//     Please write a function to efficiently compute the n-th element of the fibfib number sequence.
//     >>> fibfib(1)
//     0
//     >>> fibfib(5)
//     4
//     >>> fibfib(8)
//     24
