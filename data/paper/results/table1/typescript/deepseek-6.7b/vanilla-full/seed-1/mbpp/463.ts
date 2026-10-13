function max_subarray_product(arr: number[]): number {
    let current_max = arr[0];
    let current_min = arr[0];
    let max_product = arr[0];

    for(let i = 1; i < arr.length; i++) {
        let temp = current_max;
        current_max = Math.max(arr[i], current_max * arr[i], current_min * arr[i]);
        current_min = Math.min(arr[i], temp * arr[i], current_min * arr[i]);

        if(max_product < current_max){
            max_product = current_max;
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
