function Diff(li1: number[], li2: number[]): number[] {
  const li1Set = new Set(li1);
  const li2Set = new Set(li2);
  const diffSet = new Set([...li1Set].filter(x => !li2Set.has(x)));
  return Array.from(diffSet);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
