function fib4(n: number): number {
    let current = 0;
    let previous = 0;
    let prevPrevious = 0;
    let prevPrevPrevious = 0;
    for (let i = 0; i < n; i++) {
        const sum = current + previous + prevPrevious + prevPrevPrevious;
        prevPrevPrevious = prevPrevious;
        prevPrevious = previous;
        previous = current;
        current = sum;
    }
    return current;
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
