function is_multiply_prime(a: number): boolean {
  if (a >= 100) {
    return false;
  }

  // Factorize a into the product of 3 prime numbers
  // using the prime factorization of a < 100
  const factors = [2, 3, 5, 7, 11, 13, 17, 19, 23];
  for (let i = 0; i < factors.length; i++) {
    const factor = factors[i];
    if (a % factor === 0) {
      const remainder = a % (factor * factor);
      if (remainder === 0) {
        // The factorization is correct
        return true;
      }
    }
  }

  // The factorization is incorrect
  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the given number is the multiplication of 3 prime numbers
//     and false otherwise.
//     Knowing that (a) is less then 100.
//     Example:
//     >>> is_multiply_prime(30)
//     true
//     30 = 2 * 3 * 5
