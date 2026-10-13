function convert(numbers: number): [number, number] {
  if(numbers instanceof Complex) {
    return [Math.sqrt((numbers.real ** 2) + (numbers.imaginary ** 2)), Math.atan(numbers.imaginary / numbers.real)];
  }
  return [0, 0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
