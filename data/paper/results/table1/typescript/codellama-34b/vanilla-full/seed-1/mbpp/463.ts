function max_subarray_product(arr: number[]): number {
    let max_product = 1
    let max_end = 1
    let min_end = 1
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] == 0) {
            max_end = 1
            min_end = 1
        }
        else {
            let temp_max = max_end * arr[i]
            let temp_min = min_end * arr[i]
            max_end = Math.max(max_end * arr[i], temp_max, temp_min)
            min_end = Math.min(min_end * arr[i], temp_max, temp_min)
            max_product = Math.max(max_product, max_end)
        }
    }
    return max_product
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product subarray of the given array.
