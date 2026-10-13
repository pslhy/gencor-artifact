function max_sum(arr: number[]): number {
    let maxSum = 0;
    let minSum = 0;
    for (let i = 0; i < arr.length; i++) {
        if (i === 0) {
            maxSum = arr[i];
            minSum = arr[arr.length - 1];
        } else {
            if (arr[i] > maxSum) {
                maxSum = arr[i];
            }
            if (arr[i] < minSum) {
                minSum = arr[i];
            }
        }
    }
    return maxSum + minSum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
