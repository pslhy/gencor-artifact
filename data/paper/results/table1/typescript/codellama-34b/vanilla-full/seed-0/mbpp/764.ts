function number_ctr(str: string): number {
  const digits = '0123456789'
  let ctr = 0
  Array.from(str).forEach(char => {
      if (digits.includes(char)) {
          ctr++
      }
  })
  return ctr
}

console.log(number_ctr('abc123456def')) // Output: 6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count number of digits in a given string.
