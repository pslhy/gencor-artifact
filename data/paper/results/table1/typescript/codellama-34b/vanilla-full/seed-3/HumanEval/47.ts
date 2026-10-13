function median(l: number[]): number {
  if (l.length === 0) {
    return undefined;
  }
  const sorted = l.sort((a, b) => a - b);
  const i = Math.floor(sorted.length / 2);
  if (sorted.length % 2 === 0) {
    return (sorted[i - 1] + sorted[i]) / 2;
  } else {
    return sorted[i];
  }
}

console.log(median([3, 1, 2, 4, 5]));
console.log(median([-10, 4, 6, 1000, 10, 20]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return median of elements in the array l.
//     >>> median([3, 1, 2, 4, 5])
//     3
//     >>> median([-10, 4, 6, 1000, 10, 20])
//     15.0
