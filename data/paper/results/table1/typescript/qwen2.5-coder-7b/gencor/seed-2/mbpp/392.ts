
function get_max_sum(n: number): number {    
    let memo: [boolean, number][] = Array(n+1).fill([false, 0]);

    function dfs(x: number): number {
        if (x === 0) return 0;
        if (memo[x][0]) return memo[x][1];

        let val: number = Math.max(dfs(Math.floor(x / 2)), 0) +
                          Math.max(dfs(Math.floor(x / 3)), 0) +
                          Math.max(dfs(Math.floor(x / 4)), 0) +
                          Math.max(dfs(Math.floor(x / 5)), 0);
                          
        if (val > x) {
            memo[x] = [true, val];
        } else {
            memo[x] = [true, x];
        }

        return memo[x][1];
    }

    return dfs(n);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
