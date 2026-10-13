function get_positive(l: number[]): number[] {
    return l.filter(num => num > 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return only positive numbers in the array.
//     >>> get_positive([-1, 2, -4, 5, 6])
//     [2, 5, 6]
//     >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
//     [5, 3, 2, 3, 9, 123, 1]
