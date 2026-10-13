function get_max_sum(n: number): number { 
    let memo: number[] = new Array(n + 1).fill(0); 
    return getMaxSum(n, memo); 
}

function getMaxSum(n: number, memo: number[]): number { 
    if (n == 0 || n == 1) return n; 
    if (memo[n] != 0) return memo[n]; 
    memo[n] = Math.max(getMaxSum(Math.floor(n / 2), memo) + getMaxSum(Math.floor(n / 3), memo) + getMaxSum(Math.floor(n / 4), memo) + getMaxSum(Math.floor(n / 5), memo), n); 
    return memo[n]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
