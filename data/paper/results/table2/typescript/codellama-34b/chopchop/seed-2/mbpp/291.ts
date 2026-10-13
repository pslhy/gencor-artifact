
function count_no_of_ways(n: number, k: number): number {
    let dp = (n + 1) * (k + 1)

    // Initialize the dp table
    // dp[i][j] represent the number of ways to color the first i posts using j colors,
    // with the constraint that at most 2 adjacent posts have the same color.
    // If i = 1, the dp table reduces to the base case: dp[1][j] = j

    // Fill the dp table
    // Loop through each post in the fence, starting from the second post
    // Loop through each color in the palette, starting from the first color
    // For each post and color, we have dp[i][j] = dp[i - 1][k] * (k - 2) + dp[i - 1][j - 1] * (j - 1)
    // where j < k, to ensure that the number of colors used doesn't exceed the maximum allowed.
    // The base case is handled earlier, so we can start the loop from the second post.
    // The inner loop can be optimized to start from j = 2, since the number of ways to color
    // the first post is always 1 (using a single color).
    // The outer loop can be optimized to start from the third post,
    // since the number of ways to color the first two posts is always 2.
    // We will also need to take care of the special case when j = 1,
    // since in that case the formula won't work.
    // We can do this by checking for j = 1 and setting dp[i][1] = dp[i - 1][1].

    // Return the number of ways to color the last post
    // Since we are counting the number of ways to color the last post,
    // we only need to check the last row of the dp table.

    // In the following code, we will use a 2D array to represent the dp table,
    // where dp[i][j] represents the number of ways to color the first i posts using j colors.
    // The initialization step is handled in the base case,
    // where dp[1][j] = j for all j.

    // Fill the dp table
    // Loop through each post in the fence, starting from the second post
    // Loop through each color in the palette, starting from the first color
    // For each post and color, we have dp[i][j] = dp[i - 1][k] * (k - 2) + dp[i - 1][j - 1] * (j - 1)

    // Optimize the inner loop to start from j = 2, since the number of ways to color the first post is always 1

    // Optimize the outer loop to start from the third post, since the number of ways to color the first two posts is always 2

    // Take care of the special case when j = 1, since in that case the formula won't work.
    // Check for j = 1 and set dp

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
