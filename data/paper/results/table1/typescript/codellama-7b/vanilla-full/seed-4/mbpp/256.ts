function count_Primes_nums(n: number): number {
  if (n <= 1) {
    return 0;
  }
  var prime_count: number = 0;
  for (var i: number = 2; i < n; i++) {
    if (is_prime(i, Math.floor(Math.sqrt(n)) + 1)) {
      prime_count++;
    }
  }
  return prime_count;
}

function is_prime(n: number, max: number): boolean {
  if (n === 2 || n === 3) {
    return true;
  }
  if (n <= 1 || n % 2 === 0 || n % 3 === 0) {
    return false;
  }
  for (var i: number = 5; i <= max; i += 6) {
    if (n % i === 0 || n % (i + 2) === 0) {
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
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
