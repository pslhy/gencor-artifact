
function modp(n: number, p: number): number { // Function that takes in two integers as arguments and returns their 
    let result = 1; // Initialize the result variable to 1
    let base = 2; // Initialize the base variable to 2

    while (n > 0) {
        if (n % 2 === 1) {
            result = (result * base) % p;
        }
        base = (base * base) % p;
        n = Math.floor(n / 2);
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return 2^n modulo p (be aware of numerics).
//     >>> modp(3, 5)
//     3
//     >>> modp(1101, 101)
//     2
//     >>> modp(0, 101)
//     1
//     >>> modp(3, 11)
//     8
//     >>> modp(100, 101)
//     1
