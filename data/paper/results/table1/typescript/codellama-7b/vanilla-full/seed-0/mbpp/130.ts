function max_occurrences(nums: number[]): number {
  const counts = new Map<number, number>();
  nums.forEach(num => {
    if (counts.has(num)) {
      counts.set(num, counts.get(num) + 1);
    } else {
      counts.set(num, 1);
    }
  });
  return counts.reduce((a, b) => (a[1] >= b[1] ? a : b))[0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
