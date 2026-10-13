
function jacobsthal_num(n: number): number {
    let dp = [0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365]
    let i = dp.length - 1
    while (i < n) {
        let jacobsthal_num = dp[i] + dp[i - 1]
        dp.push(jacobsthal_num)
        ++i
    }
    return dp[n]
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...
