
function convert(numbers: number): [number, number] {
   const real: number = numbers.valueOf();
   let imaginary: number = numbers.valueOf();
   if (imaginary === 0) {
       imaginary = 1;
   }
   const abs: number = Math.sqrt(real * real + imaginary * imaginary);
   const arg: number = Math.atan2(imaginary, real);
   return [abs, arg];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
