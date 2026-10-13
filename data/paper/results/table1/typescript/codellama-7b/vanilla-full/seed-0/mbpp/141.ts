function pancake_sort(nums: number[]): number[] {
  const sorted = Array.from(nums);
  sorted.sort((a, b) => a - b);
  for (let i = 1; i < sorted.length; i++) {
    while (sorted[i] < sorted[i - 1]) {
      let temp = sorted[i];
      sorted[i] = sorted[i - 1];
      sorted[i - 1] = temp;
      i = 1;
    }
  }
  return sorted;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
