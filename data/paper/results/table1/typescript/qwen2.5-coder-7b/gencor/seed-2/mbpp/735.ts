
function toggle_middle_bits(n: number): number { // Define a function that takes in a number as a parameter and returns a number
    let count = 0; // Initialize a counter to count the number of bits
    let result = 0; // Initialize a variable to store the result
    let temp = n; // Store the input number in a temporary variable
    while(temp > 0) { // Loop until the temporary variable is greater than 0
        count++; // Increment the counter
        temp >>= 1; // Right shift the temporary variable by bitwise operations
    }
    if(count <= 2) { // If the total number of bits is less than or equal to 2
        return n; // Return the input number as there are no bits to toggle
    }
    let toggleMask = (1 << (count - 2)) - 1; // Create a bitmask to toggle all bits except the first and last
    result = n ^ toggleMask; // Perform bitwise XOR operation to toggle the bits at the calculated positions
    return result; // Return the modified number
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
