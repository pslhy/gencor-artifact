function is_multiply_prime(a: number): boolean {
  if (a < 100) {
    return false;
  }

  let i = 2;

  while (i < 100 && a % i !== 0) {
    i++;
  }

  if (i === 100) {
    return false;
  }

  let j = i + 1;

  while (j < 100 && a % j !== 0) {
    j++;
  }

  if (j === 100) {
    return false;
  }

  let k = j + 1;

  while (k < 100 && a % k !== 0) {
    k++;
  }

  return k < 100;
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
