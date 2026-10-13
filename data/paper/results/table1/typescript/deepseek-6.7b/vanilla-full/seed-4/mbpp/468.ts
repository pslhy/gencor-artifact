function max_product(arr: number[]): number {
    let n = arr.length;

    // `maxVal[i]` stores the maximum product we can get using the array elements up to `i`
    let maxVal: number[] = new Array(n);

    // `minVal[i]` stores the minimum product we can get using the array elements up to `i`,
    // as a negative number
    let minVal: number[] = new Array(n);

    maxVal[0] = minVal[0] = arr[0];
    let maxProduct = arr[0];

    for (let i = 1; i < n; i++) {
        if (arr[i] < 0) {
            // if number is negative, swap the maximum and minimum values
            let temp = maxVal[i - 1];
            maxVal[i - 1] = minVal[i - 1];
            minVal[i - 1] = temp;
        }

        // apply the dynamic programming formula
        maxVal[i] = Math.max(arr[i], maxVal[i - 1] * arr[i], minVal[i - 1] * arr[i]);
        minVal[i] = Math.min(arr[i], maxVal[i - 1] * arr[i], minVal[i - 1] * arr[i]);

        // update the result
        maxProduct = Math.max(maxProduct, maxVal[i]);
    }

    return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
