
function count_no_of_ways(n: number, k: number): number {
    let ways = 0;

    // Base case: If n is 0 or 1, there is only one way to paint the fence
    if (n <= 1) {
        return 1;
    }

    // Recursive case: Consider all possible ways to paint the first n-1 posts
    for (let i = 0; i < k; i++) {
        ways += count_no_of_ways(n-1, k);
    }

    // Additional condition to handle the case when the first and last post have the same color
    for (let i = 0; i < k-1; i++) {
        ways += count_no_of_ways(n-2, k-1);
    }

    return ways;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
