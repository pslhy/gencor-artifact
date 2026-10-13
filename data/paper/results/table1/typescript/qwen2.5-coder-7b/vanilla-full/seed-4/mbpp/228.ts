function all_Bits_Set_In_The_Given_Range(n: number, l: number, r: number): boolean { 
    // Create a number with all bits set in the given range
    let num = 0;
    for (let i = l - 1; i < r; i++) {
        num |= (1 << i);
    }
    
    // Perform bitwise AND operation to check if all bits in range are unset
    return (n & num) === num;
}

// Example usage from main function
function main() {
    const n = 8; // Binary: 1000
    const l = 2; // Start of range
    const r = 3; // End of range
    console.log(all_Bits_Set_In_The_Given_Range(n, l, r)); // Output: false
}

main();


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether all the bits are unset in the given range or not.
