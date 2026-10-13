function max_sum(arr: number[]): number {
    const n = arr.length;
    let increasing = new Array(n).fill(0);
    let decreasing = new Array(n).fill(0);
        
    increasing[0] = arr[0];
    decreasing[n - 1] = arr[n - 1];

    for (let i = 1; i < n; i++) {
        if (arr[i] > arr[i - 1]) {
            increasing[i] = Math.max(increasing[i - 1] + arr[i], arr[i]);
        } else {
            increasing[i] = arr[i];
        }
    }

    for (let i = n - 2; i >= 0; i--) {
        if (arr[i] > arr[i + 1]) {
            decreasing[i] = Math.max(decreasing[i + 1] + arr[i], arr[i]);
        } else {
            decreasing[i] = arr[i];
        }
    }

    let max_sum = Math.max(...increasing);

    for (let i = 1; i < n - 1; i++) {
        if (increasing[i - 1] + decreasing[i + 1] > max_sum) {
            max_sum = increasing[i - 1] + decreasing[i + 1];
        }
    }

    return max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
