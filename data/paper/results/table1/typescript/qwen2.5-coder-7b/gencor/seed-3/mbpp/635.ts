
function heap_sort(iterable: number[]): number[] {  
    let list = iterable.slice(); // Create a copy of the list to avoid modifying the original array
    let len = list.length;
    for (let i = Math.floor(len / 2 - 1); i >= 0; i--) {
        heap_sort

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
