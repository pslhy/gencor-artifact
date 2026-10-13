function sort_sublists(list1: string[][]): string[][] {
    return list1.map((sublist) => sublist.sort());
}

// Examples:
let list1 = [['apple', 'banana', 'orange'], ['car', 'bus', 'train']];
console.log(sort_sublists(list1)); // [['apple', 'banana', 'orange'], ['bus', 'car', 'train']]

let list2 = [['photo', 'code', 'wear'], ['watch', 'book', 'smartphone']];
console.log(sort_sublists(list2)); // [['photo', 'code', 'wear'], ['book', 'smartphone', 'watch']]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort each subarray of strings in a given array of arrays.
