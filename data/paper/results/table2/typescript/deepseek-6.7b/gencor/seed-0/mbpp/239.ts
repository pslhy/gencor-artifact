
function get_total_number_of_sequences(m: number, n: number): number {
    const dp = new Array(n + 1).fill(0).map(_ => new Array(m + 1).fill(0));
    dp[0][0] = 1;
  
    for (let i = 1; i <= n; i++) {
        dp[i][0] = 2 * dp[i-1][0];
  
        for (let j = 1; j <= m; j++) {
            dp[i][j] = dp[i-1][j] + dp[i][j-1];
            if (2*j <= m)
                dp[i][j] -= dp[i-1][2*j];
        }
    }
    
    return dp[n][m];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
