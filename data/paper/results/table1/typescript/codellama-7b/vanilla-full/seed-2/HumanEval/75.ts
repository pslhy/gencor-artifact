function is_multiply_prime(a: number): boolean {
  let i = 2;
  while (a % i !== 0 && i < 100) {
    i++;
  }
  if (a % i === 0) {
    let j = 2;
    while (a % j !== 0 && j < 100) {
      j++;
    }
    if (a % j === 0) {
      let k = 2;
      while (a % k !== 0 && k < 100) {
        k++;
      }
      return a % k === 0;
    }
  }
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
