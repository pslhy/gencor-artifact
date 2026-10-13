
function left_rotate(n: number, d: number): number { // Function to rotate bits of n to the left by d 
    let mask = ((1 << d) - 1) << (32 - d); // Create a mask with the bits to be carried over to the right side
    let carriedBits = n & mask; // Extract the bits to be carried over
    carriedBits = carriedBits << (32 - d); // Move the carried bits to the right side
    n = n << d; // Shift n to the left by d
    return n | carriedBits; // Combine n and the carried bits
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
