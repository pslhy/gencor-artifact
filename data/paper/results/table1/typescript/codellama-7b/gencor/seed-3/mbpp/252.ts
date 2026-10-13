
function convert(numbers: number): [number, number] {
  if(numbers !== 0) {
    const absolute = Math.abs(numbers);
    const argument = Math.log(absolute) / Math.log(numbers);
    return [absolute, argument];
  }

  return [0, 0];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
