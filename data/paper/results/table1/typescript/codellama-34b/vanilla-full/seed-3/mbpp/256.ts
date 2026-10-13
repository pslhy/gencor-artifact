function count_Primes_nums(n: number): number {
  if(n < 2){
      return 0;
  }
  let count = 1 //prime number 1 is always removed
  for(let i = 2; i < n; i++){
      if(is_Prime(i)){
          count++
      }
  }
  return count;
}


/*Function to check whether a number is prime or not */
function is_Prime(num: number): boolean {
  if (num <= 1) return false;
  for (let i = 2; i * i <= num; i++) {
      if (num % i == 0) return false;
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
