function digitSum(s: string): number {
  let sum = 0;
  for (const char of s) {
    if (char.toUpperCase() >= 'A' && char.toUpperCase() <= 'Z') {
      sum += char.toUpperCase().charCodeAt(0) - 'A'.charCodeAt(0);
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Task
//     Write a function that takes a string as input and returns the sum of the upper characters only'
//     ASCII codes.
//     Examples:
//     >>> digitSum("")
//     0
//     >>> digitSum("abAB")
//     131
//     >>> digitSum("abcCd")
//     67
//     >>> digitSum("helloE")
//     69
//     >>> digitSum("woArBld")
//     131
//     >>> digitSum("aAaaaXa")
//     153
