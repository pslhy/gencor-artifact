
function first_Digit(n: number): number {
  if(n < 10) {
    return n;
  }
  while(n >= 10) {
    n = Math.floor(n/=10)
  }
  return n
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first digit of a given number.
