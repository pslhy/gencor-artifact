function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    let max_sum = 0;
    if (index == n - 1) {
        return a[index];
    }
    for (let i = index + 1; i <= n - 1; i++) {
        if (a[i] > a[index]) {
            let temp = max_sum_increasing_subseq(a, n, i, k);
            if (temp > max_sum) {
                max_sum = temp;
            }
        }
    }
    return a[index] + max_sum;
}

function maxSumIncSubseq(nums: number[], k: number): number {
    let max = 0;
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] > nums[k]) {
            let temp = max_sum_increasing_subseq(nums, nums.length, i, k);
            if (temp > max) {
                max = temp;
            }
        }
    }
    return max;
}

console.log(maxSumIncSubseq([5,-2,3,10], 1)); // Output: 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
