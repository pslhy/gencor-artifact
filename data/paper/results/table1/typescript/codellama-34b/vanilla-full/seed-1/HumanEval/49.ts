function modp(n: number, p: number): number {
    const b = 1 << n;
    const c = b;
    while (n > 0) {
        if (n & 1) {
            c = (c * b) % p;
        }
        b = (b * b) % p;
        n >>= 1;
    }
    return c;
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
