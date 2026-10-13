function concatenate(strings: string[]): string {
  return strings.join("");
}

console.log(concatenate([])); // ""
console.log(concatenate(["a", "b", "c"])); // "abc"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Concatenate array of strings into a single string
//     >>> concatenate([])
//     ""
//     >>> concatenate(["a", "b", "c"])
//     "abc"
