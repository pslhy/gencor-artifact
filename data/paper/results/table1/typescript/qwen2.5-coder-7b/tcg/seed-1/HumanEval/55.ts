function fib(n: number): number { 
    if (n <= 1) return n; 
    let a = 0;
    let b = 1;
    for (let i = 2; i <= n; i++) { 
        let temp = a + b; 
        a = b; 
        b = temp; 
    } 
    return b; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return n-th Fibonacci number.
//     >>> fib(10)
//     55
//     >>> fib(1)
//     1
//     >>> fib(8)
//     21