
function convert(numbers: number): [number, number] {;
  return [Math.hypot(...numbers.toFixed(0).split(' ').map(Number)), Math.atan2(numbers.toFixed(0).split(' ')[1] as any, numbers.toFixed(0).split(' ')[0] as any)];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
