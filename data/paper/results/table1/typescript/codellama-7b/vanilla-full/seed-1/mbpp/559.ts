function max_sub_array_sum(a: number[], size: number): number {
    let max_sum = 0;
    let cur_sum = 0;
  
    for (let i = 0; i < a.length; ++i) {
        cur_sum = Math.max(cur_sum + a[i], a[i]);
        max_sum = Math.max(cur_sum, max_sum);
    }
  
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
