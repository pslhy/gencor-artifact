function convert(numbers: number): [number, number] {
  const real: number = numbers.toFixed(2).toString().split(".")[1][0] + "." + numbers.toFixed(2).toString().split(".")[1][1] + numbers.toFixed(2).toString().split(".")[1].slice(2, numbers.toFixed(2).toString().split(".")[1].length)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.