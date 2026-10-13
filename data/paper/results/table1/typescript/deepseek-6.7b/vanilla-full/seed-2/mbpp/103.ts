function eulerian_num(n: number, m: number): number {
    let sum = 0;
    for (let i = 0; i < m; i++) {
        sum += Math.pow(-1, i) * Math.pow(n - 1, i) / factorial(i);
    }
    return factorial(n) * sum;
}

function factorial(n: number): number {
    let result = 1;
    for (let i = 1; i <= n; i++) {
        result *= i;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).
