function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    let max_sum = 0;
    let sum = 0;
    for (let i = index + 1; i < k; i++) {
        sum = sum + a[i];
    }
    max_sum = Math.max(sum, max_sum);
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
