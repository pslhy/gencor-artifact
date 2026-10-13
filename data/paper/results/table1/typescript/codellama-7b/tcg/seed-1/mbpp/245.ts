function max_sum(arr: number[]): number {
    let maxSum = 0;

    for(const subsequence of arr.reduce((leftItems: number[], rightItem: number, index: number) => {
        if ( leftItems.length === 0 ) {
            leftItems.push(rightItem);
        } else if ( leftItems[leftItems.length - 1] < rightItem ) {
            leftItems.push(rightItem);
        } else {
            leftItems ==
        `
    return maxSum; }`

[Array.isArray(arr) && arr.length > 0 ? 0 : undefined


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.