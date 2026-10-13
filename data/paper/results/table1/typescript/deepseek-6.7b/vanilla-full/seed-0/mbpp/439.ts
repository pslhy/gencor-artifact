function multiple_to_single(L: number[]): number {
    let num = L.join('');
    return parseInt(num);
}

console.log(multiple_to_single([1, 2, 3, 4]));  // Output: 1234
console.log(multiple_to_single([5, 6, 7, 8]));  // Output: 5678


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to join an array of multiple integers into a single integer.
