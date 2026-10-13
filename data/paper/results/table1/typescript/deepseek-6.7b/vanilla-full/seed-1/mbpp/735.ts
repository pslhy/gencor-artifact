function toggle_middle_bits(n: number): number {
    if (n === 0 || n === 1 || ((n & (n - 1)) === n)) {
        return n;
    }

    let binary: string[] = [];
    while (n > 0) {
        binary.unshift(String(n & 1));
        n = n >> 1;
    }

    for (let i = 1; i < binary.length - 1; i++) {
        if (binary[i] === '1') {
            binary[i] = '0';
        } else {
            binary[i] = '1';
        }
    }

    return parseInt(binary.join(''), 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
