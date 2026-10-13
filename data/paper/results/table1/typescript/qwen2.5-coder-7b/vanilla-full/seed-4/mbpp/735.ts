function toggle_middle_bits(n: number): number { 
    // Calculate the number of bits in 'n' 
    let length = n.toString(2).length; 

    // Create a mask with all bits set except the first and last bits 
    let mask = 0; 
    for (let i = 1; i < length - 1; i++) { 
        mask |= (1 << i); 
    } 

    // Toggle the bits in 'n' using the mask 
    return n ^ mask; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
