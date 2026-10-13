function convert(numbers: number): [number, number] { // radius, angle
  const radius = Math.sqrt(numbers * numbers);
  const angle = Math.atan2(numbers, 0);
  return [radius, angle];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.