function count_no_of_ways(n: number, k: number): number {
    let ways = 0
    for (let i = 1; i <= k; i++) {
        for (let j = 1; j <= n; j++) {
            if (j !== i) {
                ways += 2
            }
        }
    }
    return ways
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
