function find_sum(arr: number[]): number {
  const visited = new Set<number>();
  let sum = 0;
  for (const n of arr) {
    if (!visited.has(n)) {
      sum += n;
      visited.add(n);
    }
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
