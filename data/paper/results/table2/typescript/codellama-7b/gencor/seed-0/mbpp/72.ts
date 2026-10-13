
function dif_Square(n: number): boolean {
  const x = Math.floor(Math.sqrt(n))
  const y = Math.floor(Math.sqrt(n - x * x))

  if (x * x + y * y === n) {
    return true
  }

  return false
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
