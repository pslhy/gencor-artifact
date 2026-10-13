
function dif_Square(n: number): boolean {
  let d = Math.sqrt(n);
  if (d % 1 != 0) return false;
  let x = d ** 2;
  let y = (n - x) ** 2;
  return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
