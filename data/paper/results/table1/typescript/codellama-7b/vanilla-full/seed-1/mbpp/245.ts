function max_sum(arr: number[]): number {
    let maxSum = 0;

    for(const subsequence of getBitonicSubsequences(arr)) {
        const sum = subsequence.reduce((a, b) => a + b, 0);
        if (sum > maxSum) {
            maxSum = sum;
        }
    }

    return maxSum;
}

function getBitonicSubsequences(arr: number[]): number[][] {
    const subsequences: number[][] = [];

    for(let i = 0; i < arr.length - 1; i++) {
        for(let j = i + 1; j < arr.length; j++) {
            const subsequence: number[] = [arr[i], arr[j]];
            if (isIncreasing(subsequence) && isDecreasing(subsequence)) {
                subsequence.forEach((x, k) => subsequence[k] = x + arr[k + 1]);
                subsequences.push(subsequence);
            }
        }
    }

    return subsequence;
}

function isIncreasing(arr: number[]): boolean {
    for(let i = 0; i < arr.length - 1; i++) {
        if (arr[i] > arr[i + 1]) {
            return false;
        }
    }

    return true;
}

function isDecreasing(arr: number[]): boolean {
    for(let i = arr.length - 1; i > 0; i--) {
        if (arr[i] < arr[i - 1]) {
            return false;
        }
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
