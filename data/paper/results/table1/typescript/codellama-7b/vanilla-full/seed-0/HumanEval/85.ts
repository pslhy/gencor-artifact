function add(lst: number[]): number {
  return lst.filter((x, i) => i % 2 === 1 && x % 2 === 0).reduce((a, b) => a + b, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a non-empty array of integers lst. add the even elements that are at odd indices..
//     Examples:
//     >>> add([4, 2, 6, 7])
//     2
