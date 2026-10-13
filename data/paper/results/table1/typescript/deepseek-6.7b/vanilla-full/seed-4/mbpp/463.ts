function max_subarray_product(arr: number[]): number {
    let max_end_here = arr[0];
    let min_end_here = arr[0];
    let max_so_far = arr[0];

    for (let i = 1; i < arr.length; i++) {
        let temp = max_end_here;
        max_end_here = Math.max(Math.max(arr[i], max_end_here * arr[i]), min_end_here * arr[i]);
        min_end_here = Math.min(Math.min(arr[i], temp * arr[i]), min_end_here * arr[i]);
        max_so_far = Math.max(max_so_far, max_end_here);
    }
    
    return max_so_far;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
