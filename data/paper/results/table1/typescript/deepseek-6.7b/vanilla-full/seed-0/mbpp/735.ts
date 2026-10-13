function toggle_middle_bits(n: number): number {
    if (n <= 2) return n;

    let result = 0;
    let bits = [];

    while (n > 0) {
        bits.push(n & 1);
        n = n >> 1;
    }

    bits[1] = 1 - bits[1];
    bits[bits.length - 2] = 1 - bits[bits.length - 2];

    for (let i = bits.length - 1; i >= 0; i--) {
        result = (result << 1) | bits[i];
    }

    return result;
}

console.log(toggle_middle_bits(5));
console.log(toggle_middle_bits(7));
console.log(toggle_middle_bits(8));
console.log(toggle_middle_bits(9));
console.log(toggle_middle_bits(15));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
