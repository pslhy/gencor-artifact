function square_Sum(n: number): number {
  const oddNumbers: number[] = [];
  for (let i = 1; i <= n; i += 2) {
    oddNumbers.push(i ** 2);
  }
  return oddNumbers.reduce((a, b) => a + b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers.
