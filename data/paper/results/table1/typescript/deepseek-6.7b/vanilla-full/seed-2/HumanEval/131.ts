function digits(n: number): number {
    let arr = Array.from(String(n), Number);
    let product = 1;
    let flag = false;
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] % 2 !== 0) {
            flag = true;
            product *= arr[i];
        }
    }
    return flag ? product : 0;
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
