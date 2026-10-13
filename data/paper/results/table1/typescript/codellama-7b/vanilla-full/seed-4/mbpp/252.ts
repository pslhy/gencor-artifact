function convert(numbers: number): [number, number] {
  const real: number = numbers.real;
  const imag: number = numbers.imag;
  const r: number = Math.sqrt(real * real + imag * imag);
  const theta: number = Math.atan2(imag, real);
  return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
