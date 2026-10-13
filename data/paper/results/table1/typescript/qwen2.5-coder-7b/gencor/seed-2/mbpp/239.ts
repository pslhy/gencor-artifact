
function get_total_number_of_sequences(m: number, n: number): number {    
    let count = [Array(m + 1).fill(0)];    
    for (let i = 0; i < n; i++) { 
        let nextCount = Array(m + 1).fill(0); 
        for (let j = 0; j <= m; j++) { 
            for (let k = Math.max(0, j - j); k <= j; k++) { 
                nextCount[j] = (nextCount[j] + count[i][k]) % 1000000007; 
            }
        } 
        count.push(nextCount); 
    } 
    return count[n][m]; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
