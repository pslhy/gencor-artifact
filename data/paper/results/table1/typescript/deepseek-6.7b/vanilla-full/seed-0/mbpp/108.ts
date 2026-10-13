function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    const merged = [...num1, ...num2, ...num3];
    merged.sort((a, b) => a - b);
    return merged;
}

// Usage:
console.log(merge_sorted_list([2, 6, 8], [1, 3, 7], [4, 5, 9]));  // should print [1, 2, 3, 4, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
