
function count_Primes_nums(n: number): number { 
  let isPrime = Array(n + 1).fill(true);  
  let m = Math.floor(Math.sqrt(n)); 
  for (let i = 2; i <= m; i++) { 
    if (isPrime[i] === true) { 
      for (let j = i * i; j <= n; j += i) 
        isPrime[j] = false; 
    } 
  } 
  let count = 0; 
  for (let i = 2; i < isPrime.length; i++) 
    if (isPrime[i]) 
      count++; 
  return count; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
