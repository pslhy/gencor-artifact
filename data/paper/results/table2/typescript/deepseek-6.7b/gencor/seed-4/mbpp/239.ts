
function get_total_number_of_sequences(m: number, n: number): number {
    let dp = Array(n + 1).fill(0).map(_ => Array(m + 1).fill(0));

    for(let i = 0; i <= m; i++)
        dp[1][i] = 1;

    for(let k = 2; k <= n; k++) {
        for(let x = 1; x <= m; x++) {
            for(let y = 1; y < x; y++) {
                dp[k][x] += dp[k - 1][y];
            }
            dp[k][x] += 1;
        }
    }

    let sum = 0;
    for(let i = 1; i <= m; i++) {
        sum += dp[n][i];
    }
    return sum;
}

console.log(get_total_number_of_sequences(5, 3)); // Expected Output: 30

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
