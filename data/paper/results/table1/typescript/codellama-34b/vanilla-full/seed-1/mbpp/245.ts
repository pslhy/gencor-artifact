function max_sum(arr: number[]): number {
    let maxSum = 0;

    for (const [start, end] of findWindows(arr, subarray => isBitonicSubarray(subarray))) {
        const subarraySum = arr.slice(start, end + 1).reduce((a, b) => a + b, 0);
        maxSum = Math.max(maxSum, subarraySum);
    }

    return maxSum;
}

function isBitonicSubarray(arr: number[]): boolean {
    if (arr.length < 2) {
        return false;
    }
    let isIncreasing = null;
    for (let i = 1; i < arr.length; i++) {
        if (isIncreasing === null) {
            isIncreasing = arr[i] > arr[i - 1];
        } else if (isIncreasing !== (arr[i] > arr[i - 1])) {
            return false;
        }
    }
    return true;
}

function findWindows(arr: number[], callback: (arr: number[]) => boolean): [number, number][] {
    const windows: [number, number][] = [];
    for (let i = 0; i < arr.length; i++) {
        for (let j = i + 1; j < arr.length; j++) {
            if (callback(arr.slice(i, j + 1))) {
                windows.push([i, j]);
            }
        }
    }
    return windows;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
