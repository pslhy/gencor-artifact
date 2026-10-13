function largest_prime_factor(n: number): number {
   if (n <= 1) {
       return 0;
   }
   for (let i = 2; i <= Math.sqrt(n); i++) {
       if (n % i === 0 && isPrime(i)) {
           return i;
       }
   }
   return 1;
}

function isPrime(n: number): boolean {
   if (n <= 1) {
       return false;
   }
   for (let i = 2; i <= Math.sqrt(n); i++) {
       if (n % i === 0) {
           return false;
       }
   }
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return the largest prime factor of n. Assume n > 1 and is not a prime.
//     >>> largest_prime_factor(13195)
//     29
//     >>> largest_prime_factor(2048)
//     2
