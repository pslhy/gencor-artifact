
function sum(a: number, b: number): number { 
{
   let gcd = 1; 
   for (let i = 1; i <= a && i <= b; i++) 
   { 
       if (a % i === 0 && b % i === 0) 
           gcd = i; 
   } 
   let sumOfDivisors = 0; 
   for (let i = 1; i <= gcd; i++) 
   { 
       if (gcd % i === 0) 
           sumOfDivisors += i; 
   } 
   return sumOfDivisors; 
}
// Example usage
const result = sum(12, 18);
// result should be 11 (1 + 2 + 3 + 6)
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of common divisors of two given numbers.
