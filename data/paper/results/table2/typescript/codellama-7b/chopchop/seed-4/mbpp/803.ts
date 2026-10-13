
function is_perfect_square(n: number): boolean {
  if (n <= 0) {
    return false;
  }

  let left = 0;
  let right = n;
  let ans = -1;

  while (left <= right) {
    let mid = left + (right - left) / 2;

    if (mid * mid === n) {
      return true;
    } else if (mid * mid < n) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }

    ans = mid;
  }

  return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
