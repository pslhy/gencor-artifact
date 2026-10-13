function get_total_number_of_sequences(m: number, n: number): number {
    let dp = Array(n + 1).fill(0).map(() => Array(m + 1).fill(0));
    for (let i = 1; i <= m; i++) {
        dp[1][i] = 1;
    }
    for (let i = 2; i <= n; i++) {
        for (let j = i; j <= m; j++) {
            for (let k = 1; k < j && k * 2 <= j; k++) {
                dp[i][j] += dp[i - 1][k];
            }
        }
    }
    return dp[n].reduce((a, b) => a + b, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
