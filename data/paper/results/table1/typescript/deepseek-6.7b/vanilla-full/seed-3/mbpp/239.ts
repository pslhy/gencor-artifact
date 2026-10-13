function get_total_number_of_sequences(m: number, n: number): number {
    let dp = new Array(n + 1).fill(0);
    dp[0] = 1;
    let result = 0;
    let prefixSum = new Array(m + 1).fill(0);
    prefixSum[0] = 1;
    for (let i = 1; i <= m; i++) {
        prefixSum[i] = (prefixSum[i - 1] << 1) % 1000000007;
        if (i < n) dp[i] = prefixSum[i];
        else dp[i%n] = (prefixSum[i] + (1000000007 - dp[(i - n)%n])) % 1000000007;
        result = (result + dp[i]) % 1000000007;
    }
    return result;
}

console.log(get_total_number_of_sequences(5, 3));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
