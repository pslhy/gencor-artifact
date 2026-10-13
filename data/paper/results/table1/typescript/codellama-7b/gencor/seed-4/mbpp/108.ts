
function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
  const result: number[] = [];

  while (num1.length > 0 || num2.length > 0 || num3.length > 0) {
    const num1First = num1.length > 0 ? num1[0] : null;
    const num2First = num2.length > 0 ? num2[0] : null;
    const num3First = num3.length > 0 ? num3[0] : null;

    if (num1First !== null && (num2First === null || num1First <= num2First)) {
      result.push(num1.shift()!);
    } else if (num2First !== null && (num3First === null || num2First <= num3First)) {
      result.push(num2.shift()!);
    } else {
      result.push(num3.shift()!);
    }
  }

  return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
