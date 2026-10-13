function max_val(listval: (string | number)[]): number {
  const nums: number[] = listval.filter((x) => typeof x === "number");
  if (nums.length === 0) {
    return NaN;
  }
  return Math.max(...nums);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.
