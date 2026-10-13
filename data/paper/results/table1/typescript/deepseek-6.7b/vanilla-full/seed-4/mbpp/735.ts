function toggle_middle_bits(n: number): number {
    if (n === 0 || (n & (n - 1)) === n - 1) {
        return n;
    }

    let bits = Array.from(n.toString(2)).map(Number);
    let length = bits.length;

    for (let i = 1; i < length - 1; i++) {
        bits[i] = bits[i] === 0 ? 1 : 0;
    }

    return parseInt(bits.join(""), 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
