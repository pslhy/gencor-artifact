function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    if (index >= n || k < 0 || k >= n) return Number.MIN_SAFE_INTEGER;
    let ans = a[index];
    let max_sum = Number.MIN_SAFE_INTEGER;
    for (let i = index + 1; i < n; i++) {
        if (a[i] > a[index]) {
            let sub_sum = max_sum_increasing_subseq(a, n, i, k);
            if (sub_sum > max_sum) max_sum = sub_sum;
        }
    }
    if (max_sum != Number.MIN_SAFE_INTEGER) ans += max_sum;
    if (k >= 0 && k < n && k != index) ans = Math.max(ans, a[index] + a[k]);
    return ans;
}

let a = [10, 8, 20, 12, 15, 19];
let n = a.length;
console.log(max_sum_increasing_subseq(a, n, 0, 4));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
