function max_product(arr: number[]): number {
    let n = arr.length;
    let min_product = 1;
    let max_product = 1;

    for (let i = 0; i < n; i++) {
        if (arr[i] > 0) {
            min_product *= arr[i];
            if (min_product > max_product) {
                max_product = min_product;
            }
        } else if (arr[i] < 0) {
            max_product *= arr[i];
            if (max_product < min_product) {
                min_product = max_product;
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
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
