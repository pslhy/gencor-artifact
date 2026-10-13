function tri(n: number): number[] {
    const result: number[] = [ 1 ];
    for (let i = 0; i < n; i++) {
        if (i % 2 === 0) {
            result.push(1 + i / 2);
        } else {
            result.push(result[i - 1] + result[i - 2] + result[i + 1]);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
//     the last couple centuries. However, what people don't know is Tribonacci sequence.
//     Tribonacci sequence is defined by the recurrence:
//     tri(1) = 3
//     tri(n) = 1 + n / 2, if n is even.
//     tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
//     For example:
//     tri(2) = 1 + (2 / 2) = 2
//     tri(4) = 3
//     tri(3) = tri(2) + tri(1) + tri(4)
//     = 2 + 3 + 3 = 8
//     You are given a non-negative integer number n, you have to a return an array of the
//     first n + 1 numbers of the Tribonacci sequence.
//     Examples:
//     >>> tri(3)
//     [1, 3, 2, 8]
