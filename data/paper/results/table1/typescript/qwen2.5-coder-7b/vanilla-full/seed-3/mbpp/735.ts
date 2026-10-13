function toggle_middle_bits(n: number): number {
    let count = 0;
    let temp = n;
    while (temp > 0) {
        count++;
        temp >>= 1;
    }
    if (count <= 2) {
        return n;
    }
    let mask = (1 << (count - 2)) - 1;
    return n ^ mask;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
