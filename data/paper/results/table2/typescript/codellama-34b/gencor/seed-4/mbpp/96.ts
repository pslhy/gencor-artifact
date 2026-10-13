
function divisor(n: number): number {
   if (n === 1) {
       return 1;
   }
   let count = 1;
   for (let i = 2; i < Math.sqrt(n); i++) {
       if (n % i === 0) {
           count += 2;
       }
   }
   if (n % 1 === 0) {
       count--;
   }
   return count;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of divisors of a given integer.
