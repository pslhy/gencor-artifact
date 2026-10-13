function any_int(x: number, y: number, z: number): boolean { 
    return (x === y + z) || (y === x + z) || (z === x + y) && Number.isInteger(x) && Number.isInteger(y) && Number.isInteger(z);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes 3 numbers.
//     Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
//     Returns false in any other cases.
//     Examples
//     >>> any_int(5, 2, 7)
//     true
//     >>> any_int(3, 2, 2)
//     false
//     >>> any_int(3, -2, 1)
//     true
//     >>> any_int(3.6, -2.2, 2)
//     false
