function monotonic(l: number[]): boolean {
  let decreasing = true;
  for (let i = 1; i < l.length; i++) {
    const current = l[i];
    const previous = l[i - 1];
    if (current < previous) {
      decreasing = false;
    } else if (current > previous) {
      decreasing = true;
    }
  }
  return decreasing;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return true is array elements are monotonically increasing or decreasing.
//     >>> monotonic([1, 2, 4, 20])
//     true
//     >>> monotonic([1, 20, 4, 10])
//     false
//     >>> monotonic([4, 1, 0, -10])
//     true
