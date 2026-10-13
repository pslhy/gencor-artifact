
function median(l: number[]): number {
  if(l.length === 0)
    throw new Error("No element to calculate median");
  // Sort the array
  l.sort((a, b) => a - b);
  // Return the middle element if the array has even length
  // otherwise return the average of the two middle elements
  return l.length % 2 === 0 ? l[Math.floor(l.length/ 2)] : (l[l.length / 2] + l[Math.floor(l.length/ 2) - 1]) / 2;
}

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
