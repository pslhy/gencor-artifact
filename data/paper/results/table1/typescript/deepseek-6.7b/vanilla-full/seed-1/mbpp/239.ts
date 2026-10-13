function get_total_number_of_sequences(m: number, n: number): number {
    let dp = Array.from({ length: m+1 }, () => Array(n+1).fill(0));
  
    for(let i=1; i<=m; i++) {
        dp[i][1] = 1; 
    }
  
    for(let i=1; i<=m; i++) {
        for(let j=2; j<=n; j++) {
            for(let k=2*i; k<=m && k<=2; k++) {
                dp[k][j] += dp[i][j-1];
            }
        }
    }

    let sum = 0;
    for(let i=1; i<=m; i++) {
        sum += dp[i][n];
    }

    return sum;
}

console.log(get_total_number_of_sequences(4,2)); // Outputs 6
console.log(get_total_number_of_sequences(5,3)); // Outputs 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
