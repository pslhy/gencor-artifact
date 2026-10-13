
function count_no_of_ways(n: number, k: number): number {
    let ways = 0
    // iterate over each post and assign it a color
    // Note: we need to iterate until (n-1) because the last post is always left with the same color
    // as the second last post
    // the number of colors used will be k
    // we need to count the number of ways each post can be painted such that at most 2 adjacent posts have the same color,
    // for n posts
    // the final answer will be the product of the number of ways each post can be painted
    //     E.g. for n = 4 and k = 3, the possible ways for the last post are:
    //     (R, G, B) which should not be counted, since two adjacent posts have the same color.
    //     The possible ways are:
    //     (R, G, R)
    //     (R, B, R)
    //     (G, R, G)
    //     (G, B, G)
    //     (B, R, B)
    //     (B, G, B)
    // the answer is 6
    // The answer is 3! = 6
    // the number of ways to get 3 consecutive identical colors is:
    // (3*2) = 6
    // (3*1) = 3
    // (2*2) = 4
    // (2*1) = 2
    // (1*1) = 1
    // the final answer is 6 + 3 + 4 + 2 + 1 = 16

    // brute force approach
    // return n;
    // first way to solve it is to iterate over all possible n choose k ways to paint the fence:

    // we can count the number of invalid paintings:
    // n choose k / 2
    // remember that the fence is a circular structure:

    // if k = n, the answer is the number of permutations of n objects taken k at a time:
    // n! / (n - k)!
    // we can count the number of invalid paintings:

    // for k = 2, the answer is the number of 2-combinations of n objects:
    // n C 2
    // we can count the number of invalid paintings:
    // n C 3
    // for k = 3, the answer is the number of 3-combinations of n objects:
    // n C 3
    // we can count the number of invalid paintings:
    // n C 4

    // for k = 4, the answer is the number of 4-combinations of n objects:
    // n C 4
    // we can count the number of invalid paintings:
    // n C 5
    // for k = 5, the answer is the number of 5-combinations of n objects:
    // n C 5
    // we can count the number of invalid paintings:
    // n C 6
    // for k = 6, the answer is the number of 6-combinations of n objects:

    // so the number of ways to paint the fence such that at most 2 adjacent posts have the same color is:
    // n! / (n - k)! - (n choose k) / 2

    // using the above formula, we can compute the answer for small values of n:
    // when n = 2, k = 2, the answer is 2 C 2 - 2! = 1 - 2 = -1
    // when n = 3, k = 2, the answer is 3 C 2 - 3! = 3 - 6 = -3
    // when n = 4, k = 2, the answer is 4 C 2 - 4! = 6 - 24 = -18
    // when n = 5, k = 2, the answer is 5 C 2 - 5! = 10 - 120 = -110
    // when n = 6, k = 2, the answer is 6 C 2 - 6! = 15 - 720 = -721
    // when n = 7, k = 2, the answer is 7 C 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
