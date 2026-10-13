function solution(lst: number[]): number {
  let result = 0;

  for (let i = 0; i < lst.length; i++) {
    if (i % 2 === 0 && lst[i] % 2 !== 0) {
      result += lst[i];
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a non-empty array of integers, return the sum of all of the odd elements that are in even positions.
//     Examples
//     >>> solution([5, 8, 7, 1])
//     12
//     >>> solution([3, 3, 3, 3, 3])
//     9
//     >>> solution([30, 13, 24, 321])
//     0
