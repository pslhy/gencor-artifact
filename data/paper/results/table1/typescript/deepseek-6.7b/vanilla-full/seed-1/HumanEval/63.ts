function fibfib(n: number): number {
    if(n === 0) return 0;
    if(n === 1) return 0;
    if(n === 2) return 1;

    let arr = [0, 0, 1];

    for(let i = 3; i <= n; i++) {
        arr.push(arr[i-1] + arr[i-2] + arr[i-3]);
    }
    return arr[n];
}

console.log(fibfib(1));  // prints 0
console.log(fibfib(5));  // prints 4
console.log(fibfib(8));  // prints 24


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
//     fibfib(0) == 0
//     fibfib(1) == 0
//     fibfib(2) == 1
//     fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
//     Please write a function to efficiently compute the n-th element of the fibfib number sequence.
//     >>> fibfib(1)
//     0
//     >>> fibfib(5)
//     4
//     >>> fibfib(8)
//     24
