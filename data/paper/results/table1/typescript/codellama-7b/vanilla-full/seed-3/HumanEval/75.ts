function is_multiply_prime(a: number): boolean {
  if(a < 100)
    return false;

  // Check if a is a multiple of 2 and 3
  if((a % 2 == 0) && (a % 3 == 0)) {
    // Check if 2*2*2 can equal a
    if(Math.pow(2, 3) == a)
      return true;
    else 
      return false;
  }
  else if((a % 3 == 0) && (a % 5 == 0)) {
    if(Math.pow(3, 2) == a)
      return true;
    else
      return false;
  }
  else 
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
