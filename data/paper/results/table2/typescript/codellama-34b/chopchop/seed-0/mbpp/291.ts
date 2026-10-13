
function count_no_of_ways(n: number, k: number): number {
    if (n === 1) {
        return k;
    } else if (n === 2) {
        return k * k;
    }

    // Initialize the dp array
    const dp: number = k * k;

    // Fill in the dp array
    for (let i = 3; i <= n; i++) {
        let sum = 0;
        for (let j = 1; j <= k; j++) {
            sum += (dp ** (i - 2) * k)
        // In the above line, dp is used to represent the number of ways to color the fence with i - 2 posts and k colors.
        // The sum is taken over all possible colors used in the first (i - 1) posts.
        // The

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
