function max_subarray_product(arr: number[]): number {
    let max_product = 1;
    for (let i = 0; i < arr.length; i++) {
        let product = arr[i];
        for (let j = i + 1; j < arr.length; j++) {
            product *= arr[j];
            if (product > max_product) {
                max_product = product;
            }
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
