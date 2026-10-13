function find_substring(str1: string[], sub_str: string): boolean {
    return str1.some(str => str.indexOf(sub_str) !== -1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if a string is present as a substring in a given array of string values.
