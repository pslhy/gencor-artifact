function count_Occurrence(tup: any, lst: any[]): number {
    return lst.filter(v => v === tup).length;
}

let array = [1, 2, 3, 4, 5, 1, 2, 1, 3, 2, 1];
let tuple = 1;

console.log(count_Occurrence(tuple, array)); // Output: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
