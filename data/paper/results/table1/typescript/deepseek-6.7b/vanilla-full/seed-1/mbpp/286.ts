function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let all_sum = a.reduce((total, current) => total + current, 0) * k;
    
    if(n === 1){
        return all_sum === 0 ? a[0] : all_sum;
    }

    let dp = Array(all_sum + 1).fill(Number.MIN_SAFE_INTEGER);
    dp[0] = 0;

    for(let i = 0; i < n; i++){
        for(let j = all_sum; j >= a[i]; j--){
            dp[j] = Math.max(dp[j], dp[j-a[i]] + a[i]);
        }
    }

    return dp[all_sum];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
