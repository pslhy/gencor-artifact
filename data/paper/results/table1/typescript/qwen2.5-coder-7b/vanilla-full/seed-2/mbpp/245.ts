function max_sum(arr: number[]): number { 
    let n = arr.length;
    let isIncreasing = Array(n).fill(false);
    let isDecreasing = Array(n).fill(false);

    // Mark increasing elements
    for (let i = 1; i < n; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j]) {
                isIncreasing[i] = true;
                break; 
            } 
        } 
    } 

    // Mark decreasing elements
    for (let i = n - 2; i >= 0; i--) { 
        for (let j = n - 1; j > i; j--) { 
            if (arr[i] > arr[j]) {
                isDecreasing[i] = true;
                break; 
            } 
        } 
    } 

    let maxSum = arr[0];
    // Check for bitonic subsequences
    for (let i = 1; i < n - 1; i++) { 
        if (isIncreasing[i] && isDecreasing[i]) { 
            let sum = arr[i]; 
            let j = i + 1;
            // Add increasing part
            while (j < n && arr[j] > arr[j - 1]) { 
                sum += arr[j];
                j++;
            } 
            j = i - 1;
            // Add decreasing part
            while (j >= 0 && arr[j] > arr[j + 1]) { 
                sum += arr[j];
                j--;
            } 
            maxSum = Math.max(maxSum, sum); 
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
