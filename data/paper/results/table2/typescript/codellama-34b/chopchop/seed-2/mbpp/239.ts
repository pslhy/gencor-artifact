
function get_total_number_of_sequences(m: number, n: number): number {
    let dp = 0;
    for (let i = 1; i <= m; i++) {
        dp += 1;
    }
    for (let i = 2; i < n; i++) {
        let count = 0;
        for (let j = 1; j <= m; j++) {
            if (j >= 2 * i) {
                count += dp;
            }
        }
        dp = count;
    }
    return dp;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
