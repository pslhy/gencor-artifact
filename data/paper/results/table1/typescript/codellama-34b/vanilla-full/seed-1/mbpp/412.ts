function remove_odd(l: number[]): number[] {
    return l.filter(num => num % 2 === 0);
}

console.log(remove_odd([1, 2, 3, 4, 5, 6, 7, 8, 9])); // Output: [2, 4, 6, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove odd numbers from a given array.
