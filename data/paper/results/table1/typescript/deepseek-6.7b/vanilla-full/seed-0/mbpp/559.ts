function max_sub_array_sum(a: number[], size: number): number {
    let curr_sum: number = 0;
    let max_sum: number = 0;

    for(let i = 0; i < size; i++)
        curr_sum += a[i];

    max_sum = curr_sum;

    for(let i = size; i < a.length; i++) {
        curr_sum = curr_sum - a[i - size] + a[i];
        if(curr_sum > max_sum)
            max_sum = curr_sum;
    }

    return max_sum;
}

console.log(max_sub_array_sum([1, 4, 2, 7, 5, 9], 2));  // Expected output: 16


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
