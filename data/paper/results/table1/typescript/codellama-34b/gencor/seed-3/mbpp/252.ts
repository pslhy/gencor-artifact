
function convert(numbers: number): [number, number] {
  if(numbers.valueOf() === 0 && numbers.valueOf() === 0) {
    return [0, 0];
  } else if(numbers.valueOf() === 0 && numbers.valueOf() !== 0) {
    return [0, Number.NaN];
  } else {
    const x = numbers.valueOf();
    const y = Math.sqrt(1 - (x * x));
    return [y, x];
  }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to convert complex numbers to polar coordinates.
