function max_sub_array_sum(a: number[], size: number): number { 
    let max_so_far = a[0]; 
    let curr_max = a[0]; 
    for (let i = 1; i < size; i++) { 
        curr_max = Math.max(a[i], curr_max + a[i]); 
        max_so_far = Math.max(max_so_far, curr_max); 
    } 
    return max_so_far; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
