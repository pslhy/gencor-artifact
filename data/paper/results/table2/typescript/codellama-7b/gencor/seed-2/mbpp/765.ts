
function is_polite(n: number): number {
    let d = n.toString().split('').map(digit => +digit);
    let sum = d.reduce((a: number, b: number) => a + b);
    let sum_of_squares = d.reduce((a: number, b: number) => a + b * b);
    if (sum_of_squares - sum === 1) {
        return n;
    }
    return 0;
}

function nth_polite_number(n: number): number {
    if (n === 0) {
        return 0;
    }
    for (let i = 2; i <= n; i++) {
        if (is_polite(i)) {
            return i;
        }
    }
    return 0;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
