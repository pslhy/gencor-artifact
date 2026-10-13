function is_multiply_prime(a: number): boolean {
    let primeList = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
    let checkList: number[] = [];
  
    for (let p of primeList) {
      while (a % p == 0) {
        a = a / p;
        checkList.push(p);
      }
    }
  
    if (a != 1 || checkList.length < 3) {
      return false;
    } else {
      return true;
    }
  }

  console.log(is_multiply_prime(30));  // Example usage
  // -> true


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
