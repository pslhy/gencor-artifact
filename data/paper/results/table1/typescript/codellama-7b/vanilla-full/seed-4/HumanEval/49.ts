function modp(n: number, p: number): number {
  if (p == 1) {
    return 0;
  }
  var x = 1;
  var y = 0;
  var k = 0;
  while (n > 0 && k <= 10000) {
    var b = n % 2;
    n = (n - b) / 2;
    x = x * b + y;
    y = x * 2 - y;
    k++;
  }
  if (n === 0) {
    return x % p;
  } else {
    return 1;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return 2^n modulo p (be aware of numerics).
//     >>> modp(3, 5)
//     3
//     >>> modp(1101, 101)
//     2
//     >>> modp(0, 101)
//     1
//     >>> modp(3, 11)
//     8
//     >>> modp(100, 101)
//     1
