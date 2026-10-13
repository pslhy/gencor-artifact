function overlapping(list1: number[], list2: number[]): boolean {
    return list1.some(val => list2.includes(val));
}

console.log(overlapping([1, 2, 3], [4, 5, 6])); // false
console.log(overlapping([1, 2, 3], [2, 3, 4])); // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether any value in a sequence exists in a sequence or not.
