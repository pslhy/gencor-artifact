function max_subarray_product(arr: number[]): number {
    if (!arr || arr.length === 0) {
        return 0;
    }
    
    let max_so_far = arr[0];
    let min_so_far = arr[0];
    let max_product = arr[0];
  
    for (let i = 1; i < arr.length; i++) {
        let current = arr[i];
        let temp_max = Math.max(current, max_so_far * current, min_so_far * current);
        min_so_far = Math.min(current, max_so_far * current, min_so_far * current);
    
        max_so_far = temp_max;
    
        max_product = Math.max(max_product, max_so_far);
    }

    return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
