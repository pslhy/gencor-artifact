function solution(lst: number[]): number {
    return lst.filter((n, i) => i % 2 === 0 && n % 2 !== 0).reduce((acc, n) => acc + n, 0);
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
