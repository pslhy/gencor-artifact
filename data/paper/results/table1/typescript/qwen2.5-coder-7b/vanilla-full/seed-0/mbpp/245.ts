function max_sum(arr: number[]): number { 
    let size = arr.length; 
    let msis = new Array(size).fill(0); 
    let msds = new Array(size).fill(0); 

    for (let i = 0; i < size; i++) { 
        msis[i] = arr[i]; 
        msds[i] = arr[i]; 
    } 

    for (let i = 1; i < size; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j] && msis[i] < msis[j] + arr[i]) { 
                msis[i] = msis[j] + arr[i]; 
            } 
        } 
    } 

    for (let i = size - 2; i >= 0; i--) { 
        for (let j = size - 1; j > i; j--) { 
            if (arr[i] > arr[j] && msds[i] < msds[j] + arr[i]) { 
                msds[i] = msds[j] + arr[i]; 
            } 
        } 
    } 

    let result = msis[0] + msds[0] - arr[0]; 
    for (let i = 1; i < size; i++) { 
        result = Math.max(result, msis[i] + msds[i] - arr[i]); 
    } 

    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
