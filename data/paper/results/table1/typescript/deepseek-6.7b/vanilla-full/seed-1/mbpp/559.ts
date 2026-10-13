function max_sub_array_sum(a: number[], size: number): number {
    let max_sum = 0; 
    let window_sum = 0; 
    let window_start = 0; 

    //Calculate first window sum
    for(let i=0; i<size; i++){
        max_sum += a[i];
    }
  
    window_sum = max_sum; 

    //Slide the window to right
    for(let window_end = size; window_end < a.length; window_end++){
        window_sum = window_sum - a[window_start] + a[window_end];
        max_sum = Math.max(max_sum, window_sum);
        window_start += 1; 
    }

    return max_sum;
}

max_sub_array_sum([-2,1,-3,4,-1,2,1,-5,4], 3); // Returns 6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
