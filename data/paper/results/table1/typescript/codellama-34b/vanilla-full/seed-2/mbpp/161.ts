function remove_elements(list1: number[], list2: number[]): number[] {
    return list1.filter((elem) => !list2.includes(elem));
}

// Examples
console.log(remove_elements([1, 2, 3, 4, 5], [2, 4])) // Output: [1, 3, 5]
console.log(remove_elements([1, 2, 3, 4, 5], [1, 3, 5])) // Output: [2, 4]
console.log(remove_elements([1, 2, 3, 4, 5], [])) // Output: [1, 2, 3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all elements from a given array present in another array.
