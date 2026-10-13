function find(n: number, m: number): number {
  return Math.floor(n / m);
}

console.log(find(10, 3)); // Output: 3
console.log(find(10, 4)); // Output: 2
console.log(find(10, 5)); // Output: 2
console.log(find(10, 6)); // Output: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find quotient of two numbers (rounded down to the nearest integer).
