function toggle_middle_bits(n: number): number {
    if (n <= 2)
        return n;

    let bits = [];
    while (n) {
        bits.unshift(n & 1);
        n = n >> 1;
    }

    for (let i = 1; i < bits.length - 1; i++) {
        bits[i] = bits[i] ? 0 : 1;
    }

    let res = 0;
    for (let i = bits.length - 1; i >= 0; i--) {
        res = res << 1 | bits[i];
    }

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
