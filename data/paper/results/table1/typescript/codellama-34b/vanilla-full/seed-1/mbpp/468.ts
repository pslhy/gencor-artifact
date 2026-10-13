function max_product(arr: number[]): number {
    let max = 1;
    let temp = 1;

    for (let i = 0; i < arr.length; i++) {
        temp *= arr[i];
        if (temp > max) {
            max = temp;
        }
        if (arr[i] < arr[i - 1]) {
            temp = 1;
        }
    }

    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
