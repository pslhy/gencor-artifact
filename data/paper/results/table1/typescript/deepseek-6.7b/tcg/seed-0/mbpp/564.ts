function count_Pairs(arr: number[], n: number): number {
    let num = new Map<number, number>();
    for (let i = 0; i < n; i++) {
        if (num.has(arr[i])) {
            num.set(arr[i], num.get(arr[i])!!=1+0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of integers and counts the number of possible unordered pairs where both elements are unequal.