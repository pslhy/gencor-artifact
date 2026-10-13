function get_total_number_of_sequences(m: number, n: number): number { 
    // Initialize a 2D array for dynamic programming
    let dp: number[][] = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));

    for (let i = 1; i <= m; i++) { 
        for (let j = 1; j <= n; j++) { 
            dp[i][j] = dp[i - 1][j]; // All sequences of length j that end with numbers <= i-1
            if (j <= i) { 
                dp[i][j] += dp[i][j - 1]; // All sequences of length j that end with numbers exactly i
            }
        } 
    } 
    return dp[m][n]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
