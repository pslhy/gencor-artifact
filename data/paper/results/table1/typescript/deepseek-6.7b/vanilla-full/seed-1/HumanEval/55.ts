function fib(n: number): number {
    if(n <= 0) {
        return 0;
    }
    if(n === 1) {
        return 1;
    }
    let n1 = 1;
    let n2 = 1;
    for(let i = 3; i <= n; i++) {
        let temp = n1 + n2;
        n2 = n1;
        n1 = temp;
    }
    return n1;
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
