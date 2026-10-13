function get_total_number_of_sequences(m: number, n: number): number {    
    let count = [Array(m + 1).fill(0) as number[]];
    for (let i = 0; i <= m; i++) 
        count[0][i] = 1;

    for (let i = 1; i < n; i++) {
        let temp = Array(m + 1).fill(0);
        for (let j = 0; j <= m; j++) {
            for (let k = 1; k <= j; k++) 
                temp[j] = (temp[j] + count[i - 1][k - 1]) % 1000000007;
        }
        count.push(temp);
    }

    let totalCount = 0;
    for (let i = 0; i <= m; i++) 
        totalCount = (totalCount + count[n - 1][i]) % 1000000007;

    return totalCount;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.