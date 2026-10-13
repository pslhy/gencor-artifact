function get_max_sum(n: number): number {    
    let memo: [boolean, number][] = Array(n+1).fill([false, 0]);

    function dfs residual: number): number {
        if (residual <= 1) {
            return residual;
        }
        if (!memo[residual][0]) {
            memo[residual][1] = Math.max(dfs(residual / 2), dfs(residual / 3), dfs(residual / 4), dfs(residual / 5)) + residual;
            memo[residual][0] = true;
        }
        return memo[residual][1];
    }

    return dfs(n);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
