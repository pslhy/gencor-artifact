
function len_log(list1: string[]): number {
  const words = list1.map(w => w.length).sort((a, b) => b - a);
  return words[0];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
