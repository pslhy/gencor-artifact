function factorize(n: number): number[] {
   const factors: number[] = [];
   for (let i = 2; i <= n; i++) {
      while (n % i === 0) {
         factors.push(i);
         n /= i;
      }
   }
   return factors;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return array of prime factors of given integer in the order from smallest to largest.
//     Each of the factors should be arrayed number of times corresponding to how many times it appeares in factorization.
//     Input number should be equal to the product of all factors
//     >>> factorize(8)
//     [2, 2, 2]
//     >>> factorize(25)
//     [5, 5]
//     >>> factorize(70)
//     [2, 5, 7]
