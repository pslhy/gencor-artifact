
function greatest_common_divisor(a: number, b: number): number { // Function that takes in two integers as arguments and returns their greatest common divisor
    while (b !== 0) { // While loop to continue the process until b becomes 0
        let temp = b; // Assign the value of b to a temporary variable
        b = a % b; // Calculate the remainder of a divided by b and assign it to b
        a = temp; // Assign the value of the temporary variable to a
    }
    return a; // Return the value of a as the greatest common divisor
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return a greatest common divisor of two integers a and b
//     >>> greatest_common_divisor(3, 5)
//     1
//     >>> greatest_common_divisor(25, 15)
//     5
