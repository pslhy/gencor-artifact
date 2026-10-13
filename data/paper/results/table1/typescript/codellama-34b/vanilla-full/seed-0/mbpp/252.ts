function convert(numbers: number): [number, number] {
  const x = numbers[0];
  const y = numbers[1];
  const r = Math.sqrt(x * x + y * y);
  const theta = Math.atan(y / x);
  return [r, theta];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
