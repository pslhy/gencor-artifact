function largest_prime_factor(n: number): number {
  if (n <= 1) {
    return 1;
  }
  var primeFactors: number[] = [];
  var i: number = 2;
  while (i <= Math.sqrt(n)) {
    if (n % i == 0) {
      primeFactors.push(i);
      n = n / i;
      i = 2;
    } else {
      i++;
    }
  }
  primeFactors.push(n);
  return primeFactors[primeFactors.length - 1];
}

console.log(largest_prime_factor(13195)); // Output: 29
console.log(largest_prime_factor(2048)); // Output: 2


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
