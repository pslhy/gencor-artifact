function find(n: number, m: number): number {
  if(n < 0 || m < 0){
    throw new Error("n and m should be non-negative numbers")
  }
  if(m === 0){
    throw new Error("m should not be zero")
  }
  return Math.floor(n/m)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find quotient of two numbers (rounded down to the nearest integer).
