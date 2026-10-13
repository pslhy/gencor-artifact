function max_sum(arr: number[]): number { 
    const n = arr.length; 
    const increasing = new Array(n).fill(0); 
    const decreasing = new Array(n).fill(0); 
  
    for (let i = 0; i < n; i++) { 
        increasing[i] = arr[i]; 
        decreasing[i] = arr[i]; 
    } 
  
    for (let i = 1; i < n; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j] && increasing[i] < increasing[j] + arr[i]) { 
                increasing[i] = increasing[j] + arr[i]; 
            } 
        } 
    } 
  
    for (let i = n - 2; i >= 0; i--) { 
        for (let j = n - 1; j > i; j--) { 
            if (arr[i] > arr[j] && decreasing[i] < decreasing[j] + arr[i]) { 
                decreasing[i] = decreasing[j] + arr[i]; 
            } 
        } 
    } 
  
    let maxSum = -Infinity; 
    for (let i = 0; i < n; i++) { 
        maxSum = Math.max(maxSum, increasing[i] + decreasing[i] - arr[i]); 
    } 
  
    return maxSum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
