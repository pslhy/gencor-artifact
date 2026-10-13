function max_Abs_Diff(arr: number[]): number {
  return Math.max(...arr.map((x, i) => Math.abs(x - arr[i + 1])));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
