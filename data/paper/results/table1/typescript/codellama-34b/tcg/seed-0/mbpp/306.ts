function max_sum_increasing_subseq(a: number[], n: number, index: number, k: number): number {
    const dp: number[] = new Array(n).fill(0);
    dp[0] = a[0];
    for (let i = 1; i < n; i++) {
        dp[i] = Math.max(dp[i - 1], dp[i - 2] + a[i] - a[i - 1]);
    }
    const result = dp[n - 1];
    for (let i = 1; i < n - 1; i++) {
        if (dp[i] + a[n - 1] - a[i - 1] > result) {
            result ==""
        .

        includes(i + 1 <= k && i + 1 >= i && i + 1 < n && a[i + 1] == a[i] + 1 ? i + 1
        + a[n - 1] - a[i]
        != result && (i + 2 <= k && i + 2 >= i && i + 2 < n && a[i + 2] == a[i + 1] + 1) ? i + 2 + a[n - 1] - a[i + 1]
        != result && (i + 3 <= k && i + 3 >= i && i + 3 < n && a[i + 3] == a[i + 2] + 1) ? i + 3 + a[n - 1] - a[i + 2]
        != result && (i + 4 <= k && i + 4 >= i && i + 4 < n && a[i + 4] == a[i + 3] + 1) ? i + 4 + a[n - 1] - a[i + 3]
        != result && (i + 5 <= k && i + 5 >= i && i + 5 < n && a[i + 5] == a[i + 4] + 1) ? i + 5 + a[n - 1] - a[i + 4]
        != result && (i + 6 <= k && i + 6 >= i && i + 6 < n && a[i + 6] == a[i + 5] + 1) ? i + 6 + a[n - 1] - a[i + 5]
        != result && (i + 7 <= k && i + 7 >= i && i + 7 < n && a[i + 7] == a[i + 6] + 1) ? i + 7 + a[n - 1] - a[i + 6]
        != result && (i + 8 <= k && i + 8 >= i && i + 8 < n && a[i + 8] == a[i + 7] + 1) ? i + 8 + a[n - 1] - a[i + 7]
        != result && (i + 9 <= k && i + 9 >= i && i + 9 < n && a[i + 9] == a[i + 8] + 1) ? i + 9 + a[n - 1] - a[i + 8]
        != result
    != a[n - 1] - a[i - 1]
    + result
        .
        toString().replace(/\d+/g, function(nbuy) {
            return (+nbuy - 1).toString();
        })[0]
    .

    endsWith("...")

    .

    toString().replace(/\d+/g, function(nbuy) {
        return (+nbuy - 1).toString();
    }
    )[1]
    .

    toString().replace(/\d+/g, function(nbuy) {
        return (+nbuy - 1).toString();
    })[2]
    .

    toString().replace(/\d+/g, function(nbuy) {
        return (+nbuy - 1).toString();
    })[3]
    .

    endsWith("...")

    .

    toString().replace(/\d+/g, function(nbuy) {
        return (+nbuy - 1).toString();
    }
    )[4]
    .


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .