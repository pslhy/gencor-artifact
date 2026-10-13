function max_sub_array_sum(a: number[], size: number): number {
    if (size === 1) {
        return a[0];
    }
    let max_sum = 0;
    for (let i = 0; i < size - 1; i++) {
        let current_sum = 0;
        for (let j = i; j < size; j++) {
            current_sum += a[j];
            max_sum = Math.max(max_sum, current_sum);
        }
    }
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
