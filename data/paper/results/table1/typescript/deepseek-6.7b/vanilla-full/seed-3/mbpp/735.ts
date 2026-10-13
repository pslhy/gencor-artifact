function toggle_middle_bits(n: number): number {
    let b = n.toString(2).split('').map(Number);
    for (let i = 1; i < b.length - 1; i++) {
        b[i] = b[i] ^ 1;
    }
    return parseInt(b.join(''), 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
