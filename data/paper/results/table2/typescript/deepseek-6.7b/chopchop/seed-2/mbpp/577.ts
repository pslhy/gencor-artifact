
function last_Digit_Factorial(n: number): number {
    let arr = n > 1 ? 2 : 1;
    arr = Math.floor(n / 4) * 2;
    if (n % 2 === 1)
        arr++;
    let p = 4;
    while (true) {
        let p1 = p % 10;
        if (arr > n) {
            arr--;
            if (p === 5 || p === 0) {
                p1 += 4;
            }
            else {
                p1 += p === 2 ? 3 : 1;
            }
        }
        if (p1 === 0) {
            p1 = 4;
        }
        if (p === p1) {
            return p1;
        }
        else {
            p = p1;
        }
    }

    return -1; // This line is never reached, but it is required to satisfy

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.
