function all_unique(test_list: number[]): boolean {
    return new Set(test_list).size === test_list.length;
}

console.log(all_unique([1, 2, 3, 4, 5])); // true
console.log(all_unique([1, 2, 2, 3, 4, 5])); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
