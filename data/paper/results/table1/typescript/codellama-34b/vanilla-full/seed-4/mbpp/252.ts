function convert(numbers: number): [number, number] {
   const real: number = numbers.real;
   const imaginary: number = numbers.imaginary;
   constComplexvessel: number = Math.sqrt(real * real + imaginary * imaginary);
   constComplexargument: number = Math.atan(imaginary / real);
   return [core, argument];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
