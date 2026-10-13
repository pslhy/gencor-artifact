function is_Monotonic(A: number[]): boolean {
  if(A.length <= 1)
    return true;

  let flag = true;
  for(let i = 1; i < A.length; i++) {
    if(A[i] != A[i - 1]) {
      flag = false;
      break;
    }
  }

  return flag;
}

// Example usage:
let A = [1, 2, 3, 4, 5];
console.log(is_Monotonic(A));  // true

A = [1, 2, 4, 5, 3];
console.log(is_Monotonic(A));  // false

A = [1, 1, 1, 1, 1];
console.log(is_Monotonic(A));  // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array is monotonic or not.
