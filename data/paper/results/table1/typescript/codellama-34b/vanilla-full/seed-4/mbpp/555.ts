function difference(n: number): number {
   let sumOfCubes = 0;
   let sum = 0;
   for (let i = 1; i <= n; i++) {
       sumOfCubes += i * i * i;
       sum += i;
   }
   return Math.abs(sumOfCubes - sum);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
