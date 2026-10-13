function max_subarray_product(arr: number[]): number {
    let max_product = 1;
    let min_product = 1;
    let max_ending_here = 1;
    let min_ending_here = 1;
    for (let i = 0; i < arr.length; i++) {
        const num = arr[i];
        max_ending_here = Math.max(num, max_ending_here * num);
        min_ending_here = Math.min(num, min_ending_here * num);
        max_product = Math.max(max_product, max_ending_here, min_ending_here);
    }
    return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
