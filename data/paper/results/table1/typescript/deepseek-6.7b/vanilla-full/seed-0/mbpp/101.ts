function kth_element(arr: number[], k: number): number {
    if(k <= 0 || k > arr.length) {
        throw new Error('Invalid k value. It should be between 1 and array length');
    }
    return arr[k - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the kth element in the given array using 1-based indexing.
