function multiply(a: number, b: number): number {
    // Get unit digit from each number
    let unitDigitA = Math.abs(a) % 10;
    let unitDigitB = Math.abs(b) % 10;
    // Multiply the unit digits and return
    return unitDigitA * unitDigitB;
}

console.log(multiply(148, 412)) // 16
console.log(multiply(19, 28)) // 72
console.log(multiply(2020, 1851)) // 0
console.log(multiply(14, -15)) // 20


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Complete the function that takes two integers and returns
//     the product of their unit digits.
//     Assume the input is always valid.
//     Examples:
//     >>> multiply(148, 412)
//     16
//     >>> multiply(19, 28)
//     72
//     >>> multiply(2020, 1851)
//     0
//     >>> multiply(14, -15)
//     20
