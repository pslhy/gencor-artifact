function find_Rotations(str: string): number {
  const switchPos = str.indexOf('|')
  const left = str.slice(0, switchPos)
  const right = str.slice(switchPos + 1)
  return Math.ceil(left.length / right.length)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
