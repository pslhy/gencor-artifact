function max_sub_array_sum(a: number[], size: number): number {
    let sum = 0;
    let max = 0;

    if( a.length >= size ) {
        for (let i = 0; i < size; i++) {
            sum += a[i];
        }
        max = sum;
        for (let i = size; i < a.length; i++) {
            sum = sum - a[i - size] + a[i];
            if(sum > max) {
                max = sum;
            }
        }
    }

    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
