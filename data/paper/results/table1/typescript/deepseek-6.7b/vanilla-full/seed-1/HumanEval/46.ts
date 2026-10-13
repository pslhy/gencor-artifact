function fib4(n: number): number {
    if(n === 0) return 0;
    if(n === 1) return 0;
    if(n === 2) return 2;
    if(n === 3) return 0;

    let f0 = 0;
    let f1 = 0;
    let f2 = 2;
    let f3 = 0;

    for(let i = 4; i <= n; i++) {
        let temp = f3 + f2 + f1 + f0;
        f0 = f1;
        f1 = f2;
        f2 = f3;
        f3 = temp;
    }

    return f3;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
//     fib4(0) -> 0
//     fib4(1) -> 0
//     fib4(2) -> 2
//     fib4(3) -> 0
//     fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
//     Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
//     >>> fib4(5)
//     4
//     >>> fib4(6)
//     8
//     >>> fib4(7)
//     14
