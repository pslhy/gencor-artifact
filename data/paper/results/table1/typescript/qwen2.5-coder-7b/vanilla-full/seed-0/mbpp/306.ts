function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number { 
    if (index >= n || k <= index) return 0; 

    let res = 0; 
    res = Math.max(res, max_sum_increasing_subseq(a, n, index + 1, k)); 
  
    if (a[index] < a[k]) { 
        res = Math.max(res, a[index] + max_sum_increasing_subseq(a, n, index + 1, k)); 
    } 
  
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
