
function get_total_number_of_sequences(m: number, n: number): number {
    let dp: number = 0;
    let MOD: number = 1000000007;

    if (m < n) return 0; // Not enough values to form a sequence of length m

    let prev: number = 0;
    let curr: number = 1;

    for (let i = 1; i <= m; i++) {
        prev = curr;
        curr = ((prev * i) % MOD + (prev * (i - 1)) % MOD) % MOD;
    }

    return ((dp * 2) % MOD + (dp * (n - 1)) % MOD) % MOD;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
