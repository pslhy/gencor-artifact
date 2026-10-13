function cube_Sum(n: number): number {
   let sum = 0;
   for (let i = 2; i <= n; i += 2) {
      sum += i * i * i;
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the cube sum of first n even natural numbers.
