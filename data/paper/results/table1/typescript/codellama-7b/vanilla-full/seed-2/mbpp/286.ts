function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let dp = Array(k).fill(0).map(() => a.map(_ => 0));
    let prev_max = new Array(k).fill(0);
    for (let i = 0; i < a.length; i++) {
        for (let j = 0; j < k; j++) {
            let curr_max = Math.max(prev_max[j] + a[i], a[i]);
            dp[j][i] = Math.max(prev_max[j], curr_max);
            prev_max[j] = curr_max;
        }
    }
    return dp[k-1].reduce((a, b) => Math.max(a, b));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
