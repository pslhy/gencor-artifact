function re_arrange_array(arr: number[], n: number): number[] {
  const negative = arr.slice(0, n).filter((x) => x < 0);
  const positive = arr.slice(0, n).filter((x) => x >= 0);
  return negative.concat(positive);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n, and re-arranges the first n elements of the given array so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.
