function string_sequence(n: number): string {
  return [...Array(n + 1).keys()].map((i) => i.toString()).join(" ");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return a string containing space-delimited numbers starting from 0 upto n inclusive.
//     >>> string_sequence(0)
//     "0"
//     >>> string_sequence(5)
//     "0 1 2 3 4 5"
