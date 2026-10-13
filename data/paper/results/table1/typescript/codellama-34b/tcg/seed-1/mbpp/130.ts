function max_occurrences(nums: number[]): number {
    let counts = nums.reduce((a: number, x: number) => {
        a.hasOwnProperty(x.toString()) ? a.hasOwnProperty(x.toString()) : a.hasOwnProperty(x.toString())
        return a;
    }, new Map<string, number>().entries().forEach((v: [string, number]) => v[1]++ as [string, number])


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.