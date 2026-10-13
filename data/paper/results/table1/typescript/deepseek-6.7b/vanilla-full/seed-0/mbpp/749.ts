function sort_numeric_strings(nums_str: string[]): number[] {
    const nums_array: number[] = nums_str.map(num => parseInt(num));
    nums_array.sort((a, b) => a - b);
    return nums_array;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given array of strings of numbers numerically. https://www.geeksforgeeks.org/tsthon-sort-numeric-strings-in-a-array/
