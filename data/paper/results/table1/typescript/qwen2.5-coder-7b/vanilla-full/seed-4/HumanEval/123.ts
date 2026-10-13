function get_odd_collatz(n: number): number[] {
    let collatz: number[] = [];
    while (n !== 1) {
        collatz.push(n);
        n = n % 2 === 0 ? n / 2 : 3 * n + 1;
    }
    collatz.push(1);
    let oddNumbers: number[] = collatz.filter(num => num % 2 !== 0);
    return oddNumbers.sort((a, b) => a - b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
//     The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
//     as follows: start with any positive integer n. Then each term is obtained from the
//     previous term as follows: if the previous term is even, the next term is one half of
//     the previous term. If the previous term is odd, the next term is 3 times the previous
//     term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
//     Note:
//     1. Collatz(1) is [1].
//     2. returned array sorted in increasing order.
//     For example:
//     get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
//     >>> get_odd_collatz(5)
//     [1, 5]
