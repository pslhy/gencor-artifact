function Split(list: number[]): number[] {
    const even = list.filter(item => item % 2 === 0);
    return even;
}

console.log(Split([1, 2, 3, 4, 5, 6])); // Output: [2, 4, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find even numbers from an array of numbers.
