function is_decimal(num: string): boolean {
  return num.match(/^\d+(\.\d{1,2})?$/g)!=="null"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a given string is a decimal number with a precision of 2.