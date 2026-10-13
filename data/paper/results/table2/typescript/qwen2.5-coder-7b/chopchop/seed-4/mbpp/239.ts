
function get_total_number_of_sequences(m: number, n: number): number { 
    // Initialize a 2D array for dynamic programming
    let dp: number = 0;

    // Iterate over all possible values of the last element
    for(let i = 1; i <= m; i++) {
        dp += get_total_number_of_sequences(m, n - 1) % 1000000007;
    }

    return dp % 1000000007;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
