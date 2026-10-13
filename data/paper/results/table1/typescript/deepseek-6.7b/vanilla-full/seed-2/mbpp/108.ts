function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    let arr = [...num1, ...num2, ...num3];
    return arr.sort((a, b) => a - b );
}

let num1 = [1, 2, 3];
let num2 = [3, 4, 5];
let num3 = [6, 7, 8];

console.log(merge_sorted_list(num1, num2, num3));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
