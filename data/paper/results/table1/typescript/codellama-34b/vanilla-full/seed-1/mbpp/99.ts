function decimal_to_binary(n: number): string {
    let acc = "";
    while (n > 0) {
        acc += String(n % 2);
        n = Math.floor(n / 2);
    }
    return acc.split("").reverse().join("");
}

console.log(decimal_to_binary(7)); // Output: 111
console.log(decimal_to_binary(12)); // Output: 1100
console.log(decimal_to_binary(14)); // Output: 1110
console.log(decimal_to_binary(15)); // Output: 1111
console.log(decimal_to_binary(100)); // Output should not have leading zeros


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros.
