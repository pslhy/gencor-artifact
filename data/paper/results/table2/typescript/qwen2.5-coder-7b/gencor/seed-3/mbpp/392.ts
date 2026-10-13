
function get_max_sum(n: number): number {
    let memo: number[] = new Array(n + 1).fill(0);
    memo[0] = 0;
    memo[1] = 1;

    function helper(x: number): number {
        if (memo[x] !== 0) return memo[x];
        memo[x] = Math.max(helper(Math.floor(x / 2)) + helper(Math.floor(x / 3)) + helper(Math.floor(x / 4)) + helper(Math.floor(x / 5)), x);
        return memo[x];
    }

    return helper(n);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
