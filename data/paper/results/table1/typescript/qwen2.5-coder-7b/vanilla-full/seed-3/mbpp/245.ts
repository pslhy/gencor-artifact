function max_sum(arr: number[]): number { 
    let n = arr.length; 
    let lis = new Array(n).fill(0); 
    let lds = new Array(n).fill(0); 
  
    for (let i = 0; i < n; i++) {
        lis[i] = arr[i];
        lds[i] = arr[i];
    } 
  
    for (let i = 1; i < n; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j] && lis[i] < lis[j] + arr[i]) {
                lis[i] = lis[j] + arr[i];
            }
        } 
    } 
  
    for (let i = n - 2; i >= 0; i--) { 
        for (let j = n - 1; j > i; j--) { 
            if (arr[i] > arr[j] && lds[i] < lds[j] + arr[i]) {
                lds[i] = lds[j] + arr[i];
            }
        } 
    } 
  
    let max = -1; 
    for (let i = 0; i < n; i++) { 
        max = Math.max(max, lis[i] + lds[i] - arr[i]); 
    } 
  
    return max; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
