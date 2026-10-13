function max_Abs_Diff(arr: number[]): number {
    const sorted = arr.sort((a, b) => a - b);
    return Math.max(...sorted) - Math.min(...sorted);
}

console.log(max_Abs_Diff([1, 5, 2, 3, 10])); // outputs 9
console.log(max_Abs_Diff([-4, 2, 4, 3, 1])); // outputs 9
console.log(max_Abs_Diff([-2, -1, 0, 1, 2])); // outputs 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
