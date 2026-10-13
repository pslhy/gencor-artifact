function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    if (k < 0 || index >= n) {
        return -1;
    }

    let max_sum = -1;
    for (let i = index; i < n; i++) {
        let sum = a[i];
        let j = i;
        while (++j < n && a[j] > a[i]) {
            sum += a[j];
            let temp = max_sum_increasing_subseq(a, n, j, k-1);
            if (temp !== -1) {
                max_sum = Math.max(max_sum, sum + temp);
            }
        }
        if (k === 0) {
            break;
        }
    }
    return max_sum;
}

let arr = [10, 12, 9, 11, 13, 15, 14];
let n = arr.length;
let index = 0;
let k = 2;
console.log(max_sum_increasing_subseq(arr, n, index, k));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
