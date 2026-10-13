function solve(N: number): string {
   let sum = 0;
   while (N > 0) {
      sum += N % 10;
      N = Math.floor(N / 2);
   }
   return Number(sum).toString(2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer N, return the total sum of its digits in binary.
//     Example
//     >>> solve(1000)
//     "1"
//     >>> solve(150)
//     "110"
//     >>> solve(147)
//     "1100"
//     Variables:
//     @N integer
//     Constraints: 0 ≤ N ≤ 10000.
//     Output:
//     a string of binary number
