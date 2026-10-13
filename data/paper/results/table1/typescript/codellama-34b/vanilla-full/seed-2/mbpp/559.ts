function max_sub_array_sum(a: number[], size: number): number {
    let currentSum = 0;
    let maxSum = 0;
    for (let i = 0; i < size; i++) {
        currentSum += a[i];
        if (currentSum < 0) {
            currentSum = 0;
        } else if (currentSum > maxSum) {
            maxSum = currentSum;
        }
    }
    return maxSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
