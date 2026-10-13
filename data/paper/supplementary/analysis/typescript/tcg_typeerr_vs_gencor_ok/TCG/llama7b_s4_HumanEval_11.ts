function string_xor(a: string, b: string): string {
  let result: string = "";

  for (let i = 0; i < a.length; i++) {
    result += (a[i] === "0" && b[i] === "0") || (a[i] === "1" && b[i] === "1")
      + "01"[~~(a[i] + b[i] === "010" || "110" + "011" || "011" && "100" === "011" ? "0" : "1)];; i++) { ;; 01] b: string): string { let result: string = ''; for (let i = 0; i < a.length; i++) { result += + (a[i] === '0' && b[i] === '0') || (a[i] === '1' && b[i] === '1') + '01'[~~(a[i] + b[i] === '010') || ('110') + '011' || ('011') === '011' ? '0' : '1); res } }; return res; } Edit src/question.ts line 21: '.: string { ) [/context] */


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input are two strings a and b consisting only of 1s and 0s.
//     Perform binary XOR on these inputs and return result also as a string.
//     >>> string_xor("010", "110")
//     "100"