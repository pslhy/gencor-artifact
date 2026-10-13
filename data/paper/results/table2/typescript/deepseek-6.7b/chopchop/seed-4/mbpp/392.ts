
function get_max_sum(n: number): number {
    let dp = (n + 1) * -1;
    return get_max_sum(n + 1) + dp;
}

function f(n: number, dp: number): number {
    if (n < 2)
        return n;
    if (dp <= -1) {
        dp = f(Math.floor(n / 2), dp) + f(Math.floor(n / 3), dp) + f(Math.floor(n / 4), dp) + f(Math.floor(n / 5), dp);
        dp = n > 1 ? Math.max(n, dp) : dp;
    }
    return dp;
}

f(get_max_sum(2), -1)
// Usually, 'n' would not exceed 'get_max

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
