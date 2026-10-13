function max_sub_array_sum(a: number[], size: number): number { 
    let max_so_far = Number.MIN_SAFE_INTEGER; 
    let max_ending_here = 0; 

    for (let i = 0; i < size; i++) { 
        max_ending_here = max_ending_here + a[i]; 
        if (max_so_far < max_ending_here) {
            max_so_far = max_ending_here; 
        }
        if (max_ending_here < 0) {
            max_ending_here = 0; 
        } 
    } 
    return max_so_far; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
