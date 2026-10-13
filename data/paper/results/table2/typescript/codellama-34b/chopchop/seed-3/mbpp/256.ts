
function count_Primes_nums(n: number): number {
  if(n < 2){
      return 0;
  }
  let count = 1 //prime number 1 is always removed
  // index = 1 since we don't have to test numbers that are < 2
  //index = (-1) to remove the number 1 from looking at it

  //Loop through all numbers up an including n, 
  //if the index is not divisible by any number less than it then it is prime
  //include all numbes up an including n
  //dont test number < 2
  //due to algorithm the number 1 is always counted as prime, so all prime numbers will be one more than returned nukmber
  //account for the number 1 at the beginning of the list
  //implicity the number 1 is considered prime since it is only divisible by 1  and itself
  // algorithm is to divide the number by all it's prime factors
  // if the number is divisible by a number greater than one and lies before that number in the sequence then it is not prime
  //otherwise it ia prime

  // start counting steps at 2
  //the algorithm loops through all numbers less than n to see if n is prime
  // for example n = 4 , p=2 , the divisble by 2, so it returns 0 and terminates the loop
  //n=5 step= 2 (< 5) returns 0 , n=6 , stepped = 2, return 0... n- 7 the step ++ to 3 and checl if divisible by 3 .if not go to next for loop
  // step = 3 , divisible return 0 , go to next for loop
  // n=  8 step = 3 , divisible return 0, go to next for loop
  // n = 9 step = 3 , divisible return 0, go to next for loop
  // n = 10 step = 3 ,divisible return 0, go to next for loop
  // n = 11 step = 3 , don't go to next for loop
  // n = 11 , step = 3 , divisible by 1
  // n = 11 , step = 3 , divisible by 11
  //n = 11 , step = 3 return 1
  // so for the first number that is divisible by a previous number it doesn't reach the last step an return 1 

  //logic 
  // Hofstadter Q sequence startintg from 1 ,1
  // Run a for loop starting at 2 --> n
  // var q_i = q_i-1 + q_i-2
  // if q_i odd  step ++2 else ++1
  //return step

    
  // return step

  //the sequence starts out the same as the Fibonacci sequence, but then starts to stray as the terms begin to grow
  // let the fibonacci sequence be defined as a number series where the first two terms are 0 and 1, and each subsequent term is the sum of the previous two

  // iteration 1: F(1) = 0 and F(2) = 1, n=3
  // 1 + 2 = 3
  // divisible by 1, divisible by 3
  // n = 3 , step = 1 , return 0,  n = 5, step = 2 , return 0
  // p=3 ,step =((2)(3)+1)/2

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
