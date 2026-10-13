function max_sum(arr: number[]): number { 
    const n: number = arr.length; 
    const inc: number[] = new Array(n).fill(0); 
    const dec: number[] = new Array(n).fill(0); 
  
    for (let i = 0; i < n; i++) {
        inc[i] = dec[i] = arr[i]; 
        for (let j = 0; j < i; j++) {
            if (arr[i] > arr[j] && inc[i] < inc[j] + arr[i]) {
                inc[i] = inc[j] + arr[i]; 
            }
        }
    }
  
    for (let i = n - 1; i >= 0; i--) {
        for (let j = n - 1; j > i; j--) {
            if (arr[i] > arr[j] && dec[i] < dec[j] + arr[i]) {
                dec[i] = dec[j] + arr[i]; 
            }
        }
    }
  
    let maxSum: number = inc[0] + dec[0] - arr[0]; 
  
    for (let i = 0; i < n; i++) {
        if (maxSum < inc[i] + dec[i] - arr[i]) {
            maxSum = inc[i] + dec[i] - arr[i]; 
        }
    }
    return maxSum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
