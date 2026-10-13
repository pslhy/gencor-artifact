function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    if(index >= n) return 0

    let max_ending_here = a[index] // maximum sum subsequence ending at current index
    let max_so_far = max_ending_here // maximum sum of subsequence so far
    for(let i = index + 1; i <= k; i++) {
        max_ending_here = Math.max(max_ending_here, 0)
        max_so_far = Math.max(max_so_far, max_ending_here + a[i])
    }
    return max_so_far
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
