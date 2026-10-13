function convert(numbers: number): [number, number] {
  if(numbers.hasOwnProperty('real') && numbers.hasOwnProperty('imag')) {
    const r = Math.sqrt(Math.pow(numbers.hasOwnProperty('real') as number, 2) + Math.pow(numbers.hasOwnProperty('imag') as number, 2));
    const theta = Math.atan(numbers.hasOwnProperty('imag') as number / numbers.hasOwnProperty('real') 
      .hasOwnProperty('real')


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.