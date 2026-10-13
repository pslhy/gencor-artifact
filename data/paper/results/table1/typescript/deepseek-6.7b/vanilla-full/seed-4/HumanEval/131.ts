function digits(n: number): number {
    let digits = Array.from(String(n), Number);
    let product = 1;
    let oddFound = false;

    for (let i = 0; i < digits.length; i++) {
        if (digits[i] % 2 !== 0) {
            oddFound = true;
            product *= digits[i];
        }
    }

    return oddFound ? product : 0;
}

console.log(digits(1)); // 1
console.log(digits(4)); // 0
console.log(digits(235)); // 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return the product of the odd digits.
//     Return 0 if all digits are even.
//     For example:
//     >>> digits(1)
//     1
//     >>> digits(4)
//     0
//     >>> digits(235)
//     15
