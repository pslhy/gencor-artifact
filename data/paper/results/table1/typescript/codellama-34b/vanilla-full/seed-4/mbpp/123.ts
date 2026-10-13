function amicable_numbers_sum(limit: number): number {
   let sum: number = 0;
   for (let i: number = 1; i < limit; i++) {
       let sumOfProperDivisors: number = 0;
       for (let j: number = 1; j < i; j++) {
           if (i % j === 0) {
               sumOfProperDivisors += j;
           }
       }
       if (sumOfProperDivisors > 1 && i === sumOfProperDivisors) {
           sum += i;
       }
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.
