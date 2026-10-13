
function get_total_number_of_sequences(m: number, n: number): number { 
    if (m < 2 * n - 1) 
        return 0; 

    let dp: number = m - 2 * n + 1; 

    for (let i = 1; i < n; i++) 
        // Apply recursive formula 
        // dp[i * 2 - 1] = (dp[i - 1] * (i + 1)) / (i + 2); 
        // calculate in a double to prevent loss of data type in integer range
        // before casting to number
        // numbers in range have total number of combinations
        // (m - n + 1) * (m - n + 2) * ... * (m - n + i + 1) / ((i + 2) * (i + 1)) 
        // Using integer division to get the result
        //  dp[i * 2 - 1] = (dp[i - 1] * (i + 1)) / (i + 2); 
        // preventing deviding by zero
        // rounding down to get the quotient
        // performing integer division to get total number of combinations
        // thus preventing overflow
        // based on the formula for permutations
        // (m - n + 1) * (m - n + 2) * ... * (m - n + i + 1)
        // dividing by (i + 2) * (i + 1)
        // dp[i * 2 - 1] = (dp[i - 1] * (i + 1)) / (i + 2); 
        // classcastint to Number
        // taking integer division by using "~"   
        // casting to number to prevent losing data type
        // in the range which overflows
        dp

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
