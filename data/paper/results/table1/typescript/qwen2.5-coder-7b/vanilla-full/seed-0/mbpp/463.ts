function max_subarray_product(arr: number[]): number { 
    let max_so_far = arr[0]; 
    let min_so_far = arr[0]; 
    let result = arr[0]; 

    for (let i = 1; i < arr.length; i++) { 
        if (arr[i] < 0) { 
            let temp = max_so_far; 
            max_so_far = min_so_far; 
            min_so_far = temp; 
        } 

        max_so_far = Math.max(arr[i], max_so_far * arr[i]); 
        min_so_far = Math.min(arr[i], min_so_far * arr[i]); 

        result = Math.max(result, max_so_far); 
    } 

    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
