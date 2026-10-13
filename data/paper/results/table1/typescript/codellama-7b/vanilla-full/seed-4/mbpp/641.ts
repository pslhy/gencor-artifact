function is_nonagonal(n: number): number {
  if (n == 1) {
    return 1;
  }
  var last_nonagonal = this.v[n - 1];
  var current_nonagonal = last_nonagonal + 2 * (n - 1) * (last_nonagonal % 2 + 1);
  return current_nonagonal;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
