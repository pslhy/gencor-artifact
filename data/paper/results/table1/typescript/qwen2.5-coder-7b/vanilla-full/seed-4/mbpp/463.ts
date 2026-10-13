function max_subarray_product(arr: number[]): number { 
    let maxProduct = arr[0]; 
    let minProduct = arr[0]; 
    let result = arr[0]; 

    for (let i = 1; i < arr.length; i++) {
        if (arr[i] < 0) [maxProduct, minProduct] = [minProduct, maxProduct]; 

        maxProduct = Math.max(arr[i], maxProduct * arr[i]); 
        minProduct = Math.min(arr[i], minProduct * arr[i]); 

        result = Math.max(result, maxProduct); 
    } 

    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
