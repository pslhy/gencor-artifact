function count_no_of_ways(n: number, k: number): number { 
    if (n === 0) return 0; 
    if (n === 1) return k; 
    let total = k, same = 0, diff = k; 
    for (let i = 2; i <= n; i++) { 
        total = (same + diff) % 1000000007; 
        same = diff % 1000000007; 
        diff = ((total - same) * (k - 1)) % 1000000007; 
    } 
    return (total + same) % 1000000007; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
