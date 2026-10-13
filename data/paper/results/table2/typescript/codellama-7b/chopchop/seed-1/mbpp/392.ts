
function get_max_sum(n: number): number {
    function helper(n: number, memo: number): number {
        if (n < 2) {
            return n;
        }
        if (memo !== 0) {
            return memo;
        }
        return Math.max(helper(n / 2, memo) + helper(n / 3, memo) + helper(n / 4, memo) + helper(n / 5, memo), n);
    }
    return helper(n, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
