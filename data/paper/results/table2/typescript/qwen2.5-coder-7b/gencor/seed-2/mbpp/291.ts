
function count_no_of_ways(n: number, k: number): number { 
    if (n === 0) return 0 
    if (n === 1) return k 
    if (k === 1) return 0 
    let mod = 1000000007 
    let same = k 
    let diff = k * (k - 1) 
    let total = same + diff 
    for (let i = 3; i <= n; i++) { 
        same = diff % mod 
        diff = total * (k - 1) % mod 
        total = (same + diff) % mod 
    } 
    return total 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
