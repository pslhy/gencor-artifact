function modp(n: number, p: number): number {
    if (p === 0) return -1;
    let result = 1;
    let base = 2;
    while (n > 0) {
        if ((n & 1) === 1) {
            result = (result * base) % p;
        }
        base = (base * base) % p;
        n = n >> 1;
    }
    return result;
}

console.log(modp(3, 5));  // 3
console.log(modp(1101, 101));  // 2
console.log(modp(0, 101));  // 1
console.log(modp(3, 11));  // 8
console.log(modp(100, 101));  // 1


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
