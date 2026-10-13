function max_sub_array_sum_repeated(a: number[], n: number, k: number): number { 
    let max_so_far = Number.MIN_VALUE; 
    let max_ending_here = 0; 
    for(let i = 0; i < n * k; i++) { 
        max_ending_here += a[i % n]; 
        if(max_so_far < max_ending_here) 
            max_so_far = max_ending_here; 
        if(max_ending_here < 0) 
            max_ending_here = 0; 
    } 
    return max_so_far; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
