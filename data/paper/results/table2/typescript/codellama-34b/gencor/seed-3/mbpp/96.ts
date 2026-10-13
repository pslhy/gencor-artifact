
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

/* Explanation:  The function goes through all  numbers from 1 to the square root of n, and if found to be divisible, increments the count  variable by 2. For the 1st divisor, count is incremented by 1, and for the the 2nd divsior(which is found after the division), count is incremented by another 1.The function return the final value of the count variable at the  end of the iteration. */

/* Test case:

1. divisor(4) ==> 3 // expected output: 3
2. divisor(8) ==> 4 // expected output: 4
3. divisor(12) ==> 6 // expected output: 6
4. divisor(16) ==> 5 // expected output: 5
5. divisor(1) ==> 1 // expected output: 1
6. divisor(-16) ==> 5 // expected output: 5

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of divisors of a given integer.
