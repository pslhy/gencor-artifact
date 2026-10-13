
function is_octagonal(n: number): number {
  if (n == 1) {
    return 1;
  }
  let num = 1;
  let side = Math.sqrt(2 * n);
  while (side % 2 == 0 && side >= 0) {
    side /= 2;
    num += 1;
  }
  return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
