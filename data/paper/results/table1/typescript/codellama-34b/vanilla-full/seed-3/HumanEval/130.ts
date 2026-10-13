function tri(n: number): number[] {
  if(n < 1){
      return [1];
  }
  let a: number = 1;
  let b: number = 3;
  let c: number = 2;
  
  for(let i = 3; i < n + 1; i++){
      let temp = c;
      c = a + b + c;
      a = b;
      b = temp;
  }
  
  return [a, b, c];
}

console.log("tri(3) ->", tri(3));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
//     the last couple centuries. However, what people don't know is Tribonacci sequence.
//     Tribonacci sequence is defined by the recurrence:
//     tri(1) = 3
//     tri(n) = 1 + n / 2, if n is even.
//     tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
//     For example:
//     tri(2) = 1 + (2 / 2) = 2
//     tri(4) = 3
//     tri(3) = tri(2) + tri(1) + tri(4)
//     = 2 + 3 + 3 = 8
//     You are given a non-negative integer number n, you have to a return an array of the
//     first n + 1 numbers of the Tribonacci sequence.
//     Examples:
//     >>> tri(3)
//     [1, 3, 2, 8]
