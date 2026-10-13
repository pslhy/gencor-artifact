function f(n: number): number[] {
  let result = [];
  for (let i = 1; i <= n; i++) {
    if (i % 2 === 0) {
      result.push(i * factorial(i - 1));
    } else {
      result.push(sum(i));
    }
  }
  return result;
}

function factorial(n: number): number {
  let result = 1;
  for (let i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

function sum(n: number): number {
  let result = 0;
  for (let i = 1; i <= n; i++) {
    result += i;
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Implement the function f that takes n as a parameter,
//     and returns an array of size n, such that the value of the element at index i is the factorial of i if i is even
//     or the sum of numbers from 1 to i otherwise.
//     i starts from 1.
//     the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
//     Example:
//     >>> f(5)
//     [1, 2, 6, 24, 15]
