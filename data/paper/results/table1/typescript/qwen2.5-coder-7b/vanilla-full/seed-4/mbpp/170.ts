function sum_range_list(list1: number[], m: number, n: number): number { 
    return list1.slice(m, n + 1).reduce((acc, curr) => acc + curr, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of numbers in an array within a range specified by two indices.
