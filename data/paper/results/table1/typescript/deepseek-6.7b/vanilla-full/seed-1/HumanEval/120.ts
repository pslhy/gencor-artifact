function maximum(arr: number[], k: number): number[] {
    return arr.sort((a, b) => b - a).slice(0, k).sort((a, b) => a - b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array arr of integers and a positive integer k, return a sorted array
//     of length k with the maximum k numbers in arr.
//     Example 1:
//     >>> maximum([-3, -4, 5], 3)
//     [-4, -3, 5]
//     Example 2:
//     >>> maximum([4, -4, 4], 2)
//     [4, 4]
//     Example 3:
//     >>> maximum([-3, 2, 1, 2, -1, -2, 1], 1)
//     [2]
//     Note:
//     1. The length of the array will be in the range of [1, 1000].
//     2. The elements in the array will be in the range of [-1000, 1000].
//     3. 0 <= k <= len(arr)
