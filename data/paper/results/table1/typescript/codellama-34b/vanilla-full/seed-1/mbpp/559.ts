function max_sub_array_sum(a: number[], size: number): number {
    let max_sum = 0
    let max_end = 0
    let current_sum = 0
    for (let i = 0; i < size; i++) {
        current_sum += a[i]
        if (current_sum < 0) {
            current_sum = 0
        } else if (current_sum > max_sum) {
            max_sum = current_sum
        }
    }
    return max_sum
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
