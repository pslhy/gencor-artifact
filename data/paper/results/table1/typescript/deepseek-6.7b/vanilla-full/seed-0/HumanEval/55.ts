function fib(n: number): number {
    if(n <= 0) return 0;
    if(n === 1) return 1;
    return fib(n-1) + fib(n-2);
}

console.log(fib(10));
console.log(fib(1));
console.log(fib(8));


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
