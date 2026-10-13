function get_max_sum(n: number): number {
    function helper(n: number, memo: Record<number, number>): number {
        if (memo.hasOwnProperty(n)) {
            return memo[n];
        }

        if (n === 1) {
            return n;
        }

        const left = helper(n / 2, memo);
        const right = helper(n / 3, memo);
        const top = helper(n / 4, memo);
        const bottom = helper(n / 5, memo);

        const current = left + right + top + bottom;
        memo[n] = current;

        return current;
    }

    return helper(n, {});
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
