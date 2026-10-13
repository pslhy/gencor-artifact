function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] { 
    return num1.concat(num2, num3).sort((a, b) => a - b); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
