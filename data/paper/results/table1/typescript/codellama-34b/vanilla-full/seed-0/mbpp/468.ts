function max_product(arr: number[]): number {
    if (arr.length === 0) {
        return 0;
    }

    let maxProduct = arr[0];
    let currentProduct = maxProduct;
    for (let i = 1; i < arr.length; i++) {
        currentProduct *= arr[i];
        maxProduct = Math.max(maxProduct, currentProduct);
        if (arr[i] < arr[i - 1]) {
            currentProduct = 1;
        }
    }

    return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
