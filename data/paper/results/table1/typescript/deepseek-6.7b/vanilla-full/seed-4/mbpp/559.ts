function max_sub_array_sum(a: number[], size: number): number {
    let max_sum = 0;
    let window_sum: number;
  
    if (size > a.length) {
        return 0;
    }
  
    for (let i = 0; i < size; i++) {
        max_sum += a[i];
    }
  
    window_sum = max_sum;
  
    // Slide the window and adjust sums as necessary
    for (let j = size; j < a.length; j++) {
        window_sum = window_sum - a[j - size] + a[j];
        max_sum = Math.max(window_sum, max_sum);
    }
  
    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
