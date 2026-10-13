function max_product(arr: number[]): number {
    if (!arr || arr.length === 0) {
        return 0;
    }

    let maxProduct = arr[0];
    let minProduct = arr[0];
    let result = arr[0];

    for (let i = 1; i < arr.length; i++) {
        let current = arr[i];
        let tempMax = Math.max(current, maxProduct * current, minProduct * current);
        minProduct = Math.min(current, maxProduct * current, minProduct * current);

        maxProduct = tempMax;
        result = Math.max(result, maxProduct);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
