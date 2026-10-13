function max_sub_array_sum(a: number[], size: number): number {
    let max_sum = 0;
    let window_sum = 0;
    let window_start = 0;
  
    for(let window_end = 0; window_end < a.length; window_end++) {
        window_sum += a[window_end]; 

        if (window_end >= size - 1) {
            max_sum = Math.max(max_sum, window_sum);
            window_sum -= a[window_start]; 
            window_start += 1; 
        }
    }
    return max_sum;
}

const arr = [1, 2, 3, 4, 5];
const subarr_size = 2;
console.log(`Maximum sum of ${subarr_size} contiguous elements in the array is: ${max_sub_array_sum(arr, subarr_size)}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the sum of the largest contiguous subarray in the given array.
