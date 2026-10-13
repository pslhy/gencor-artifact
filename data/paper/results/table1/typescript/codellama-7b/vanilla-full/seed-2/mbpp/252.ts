function convert(numbers: number): [number, number] {
  let real = numbers.real;
  let imag = numbers.imag;
  let modulus = Math.hypot(real, imag);
  let argument = Math.atan2(imag, real);
  return [modulus, argument];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
