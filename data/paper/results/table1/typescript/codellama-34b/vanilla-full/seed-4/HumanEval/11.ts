function string_xor(a: string, b: string): string {
  if (a.length !== b.length) {
    throw new Error("Inputs must have the same length");
  }
  const result: Array<string> = [];
  for (let i = 0; i < a.length; i++) {
    result.push((a[i] === b[i]) ? "0" : "1");
  }
  return result.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input are two strings a and b consisting only of 1s and 0s.
//     Perform binary XOR on these inputs and return result also as a string.
//     >>> string_xor("010", "110")
//     "100"
