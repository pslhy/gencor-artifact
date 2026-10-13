function kth_element(arr: number[], k: number): number {
    // sort the array in ascending order
    arr.sort((a, b) => a - b); 

    // the kth element would be at index k-1 after sorting
    return arr[k-1]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the kth element in the given array using 1-based indexing.
