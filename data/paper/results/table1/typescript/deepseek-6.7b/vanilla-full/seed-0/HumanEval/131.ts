function digits(n: number): number {
    let product = 1;
    const digits = String(n).split('');

    for (let digit of digits) {
        const num = parseInt(digit);
        if (num % 2 != 0) {
            product *= num;
        }
    }

    return product;
}


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
