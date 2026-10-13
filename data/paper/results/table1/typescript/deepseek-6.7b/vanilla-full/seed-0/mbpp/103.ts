function eulerian_num(n: number, m: number): number {
    if (m === 0 || n === 0 || m === n) return 1;
    if (m > n - m) m = n - m;  

    let result = 1;
    for (let i = 1; i <= m; i++) {
        result = result * (n - m + i) / i;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
