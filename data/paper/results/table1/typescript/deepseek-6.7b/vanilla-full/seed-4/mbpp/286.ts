function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let totalSum: number[] = new Array(n*k).fill(0);
    let max_so_far: number = 0;
    let current_max: number = 0;

    // To find sum of maximum subarray in modified array
    for(let i = 0; i < n*k; i++) {
        totalSum[i] = a[i % n];
        current_max += totalSum[i];

        if (current_max < 0) {
            current_max = 0;
        } else if (max_so_far < current_max) {
            max_so_far = current_max;
        }
    }
    return max_so_far;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
