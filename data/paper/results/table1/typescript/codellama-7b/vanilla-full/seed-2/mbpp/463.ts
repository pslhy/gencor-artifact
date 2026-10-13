function max_subarray_product(arr: number[]): number {
    let max_product = 1;
    for (let i = 0; i < arr.length; i++) {
        let current_product = 1;
        for (let j = i; j < arr.length; j++) {
            current_product *= arr[j];
            max_product = Math.max(max_product, current_product);
        }
    }
    return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
