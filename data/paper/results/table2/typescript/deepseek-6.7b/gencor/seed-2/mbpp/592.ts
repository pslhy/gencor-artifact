
function sum_Of_product(n: number): number {
    let sum = 0;
    let dp: number[][] = [];
    
    for(let i = 0; i <= n; i++) {
        dp[i] = new Array(i+1).fill(1);
        for(let j = 1; j < i; j++) {
            dp[i][j] = dp[i-1][j-1] + dp[i-1][j];
        }
    }

    for(let i = 0; i < n; i++) {
        sum += dp[n][i] * dp[n][i+1];
    }

    return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the product of consecutive binomial co-efficients.
