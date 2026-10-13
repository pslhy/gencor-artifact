
function toggle_middle_bits(n: number): number { // Function to toggle bits of the number except the first and the last bit
    let count = 0; // Initialize count to count the number of bits in the number
    let temp = n; // Copy the input number to a temporary variable

    // Count the number of bits in the input number
    while (temp > 0) {
        count++;
        temp >>= 1;
    }

    // Calculate the mask to toggle all bits except the first and the last bit
    let mask = ((1 << (count - 2)) - 1) ^ ((1 << (count - 1)) - 1);

    // XOR the input number with the mask to toggle the bits
    n = n ^ mask;

    return n; // Return the number with toggled bits
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
