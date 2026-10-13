function toggle_middle_bits(n: number): number {
    let mask = 1 << 31; // Set the least significant bit to 1

    while (mask > 0) {
        if (mask & n) {
            n ^= mask;
        }
        mask >>= 1;
    }

    return n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
