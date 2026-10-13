function get_max_sum(n: number): number {
    let dp = new Array(n+1).fill(-1);
    dp[0] = 0;
    dp[1] = 1;
    
    for(let i=2; i<=n;i++){
        dp[i] = Math.max(dp[Math.floor(i/2)] + dp[Math.floor(i/3)] + dp[Math.floor(i/4)] + dp[Math.floor(i/5)], i);
    }
    
    return dp[n];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
