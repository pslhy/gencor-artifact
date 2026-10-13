function divisor(n: number): number {
  if(n < 0){
     n = -n;
  }
  let count = 0;
  for(let i = 1; i<= Math.sqrt(n) ;i++){
   if (n % i == 0){
      count+=2;
   }
  }
  return count;
}

/* Explanation:

The algorithm is based on the fact that if n has a divisor p, then n/p is also a divisor. If p is less than 
sqrt(n), then n/p must be greater than or equal to sqrt(n). Therefore, we can loop through all values of 
p from 1 to sqrt(n) and for each p, add two to the count if n%p is 0, since we have found two divisors. 
Finally, if the number is a perfect square, we add one to the count for the divisor 1, which is not 
counted in the loop.

Time complexity: O(sqrt N)
Space Complexity: O(1)

*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of divisors of a given integer.
