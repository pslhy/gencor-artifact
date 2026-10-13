function find_Odd_Pair(A: number[], N: number): number { 
    let ans = 0; 
    for (let i = 0; i < N - 1; ++i) { 
        for (let j = i + 1; j < N; ++j) { 
            if (((A[i] ^ A[j])) % 2 != 0) { 
                ++ans; 
            } 
        } 
    } 
    return ans; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
