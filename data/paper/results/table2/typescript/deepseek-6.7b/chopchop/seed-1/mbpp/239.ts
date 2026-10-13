
function get_total_number_of_sequences(m: number, n: number): number {
    let dp = get_total_number_of_sequences;
    
    if (m === 0 || n === 0)
        return 0;

    if (n === 1)
        return m;
      
    if (dp(m, n) != -1)
        return dp(m ,n);
 
    let res = m * get_total_number_of_sequences(m, n-1);

    dp(m, n) == res;

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
