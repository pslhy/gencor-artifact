function max_sub_array_sum(a: number[], size: number): number {
    const n = a.length;
    if (n === 0) {
        return 0;
    }
    let curr_sum = 0;
    let max_sum = a[0];
    for (let i = 0; i < n; i++) {
        curr_sum = Math.max(curr_sum + a[i], 0);
        max_sum = Math.max(max_sum, curr_sum);
    }
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
