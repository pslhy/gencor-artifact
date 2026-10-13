function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number { 
    if (k < index) { 
        return -1; 
    } 
  
    let result = -1; 
    for (let j = 0; j < index; j++) { 
        if (a[index] > a[j]) { 
            result = Math.max(result, max_sum_increasing_subseq(a, n, j, k)); 
        } 
    } 
  
    if (result == -1) { 
        return a[index] + max_sum_increasing_subseq(a, n, k, k); 
    } else { 
        return a[index] + result + max_sum_increasing_subseq(a, n, k, k); 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
