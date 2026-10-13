
function dif_Square(n: number): boolean {
  let a: number = 0;
  let b: number = 0;
  let c: number = 0;
  let d: number = 0;
  let e: number = 0;
  let f: number = 0;
  a = b * b;
  c = d * d;
  e = f * f;
  if (n == a - c) {
    return true;
  } else {
    return false;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
