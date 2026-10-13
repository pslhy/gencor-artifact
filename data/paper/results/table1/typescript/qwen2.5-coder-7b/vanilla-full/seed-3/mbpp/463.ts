function max_subarray_product(arr: number[]): number {
    let max_product = arr[0];
    let min_product = arr[0];
    let result = arr[0];

    for (let i = 1; i < arr.length; i++) {
        if (arr[i] < 0) {
            [max_product, min_product] = [min_product, max_product];
        }

        max_product = Math.max(arr[i], max_product * arr[i]);
        min_product = Math.min(arr[i], min_product * arr[i]);

        result = Math.max(result, max_product);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
