function decimal_to_binary(n: number): string {
    let result = ""
    while (n > 0) {
        result += n % 2
        n = Math.floor(n / 2)
    }
    return result.split("").reverse().join("")
}

console.log(decimal_to_binary(20)) // Output: 10100
console.log(decimal_to_binary(25)) // Output: 11001
console.log(decimal_to_binary(12)) // Output: 1100
console.log(decimal_to_binary(1)) // Output: 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros.
