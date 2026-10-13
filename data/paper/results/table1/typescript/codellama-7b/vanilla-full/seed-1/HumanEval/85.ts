function add(lst: number[]): number {
  let sum = 0;
  for (let i = 1; i < lst.length; i += 2) {
    sum += lst[i];
  }
  return sum;
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
