function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
  const start = rotations === 0 ? 0 : ranges[rotations - 1][0];
  const end = rotations === ranges.length ? arr.length : ranges[rotations][1];

  const rotated_index = index - start + end;

  return arr[rotated_index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
