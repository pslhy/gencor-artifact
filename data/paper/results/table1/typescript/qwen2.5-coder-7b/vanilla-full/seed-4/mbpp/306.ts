function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number { 
    // Base case 
    if (n - 1 == index) { 
        return a[index]; 
    } 
  
    // Initialize with the maximum sum including the current element 
    let incl = a[index]; 
  
    // Iterate through the array to find the maximum sum of increasing subsequence 
    for (let i = index + 1; i < k; i++) { 
        if (a[i] > a[index] && incl < (max_sum_increasing_subseq(a, n, i, k) + a[index])) { 
            incl = max_sum_increasing_subseq(a, n, i, k) + a[index]; 
        } 
    } 
  
    // Return the maximum of including and not including the current element 
    return Math.max(incl, max_sum_increasing_subseq(a, n, index + 1, k)); 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
