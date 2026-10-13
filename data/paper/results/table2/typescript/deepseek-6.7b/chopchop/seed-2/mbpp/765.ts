
function is_polite(n: number): number {
    while (n % 2 === 0) {
        n = n / 2;
    }
    return (n === 1)? 1: 0;
}

function nthPolite(n: number): number {
    let count = 0;
    let i = 1;
    while (count < n) {
        if (is_polite(i) === 1) {
            count++;
        }
        i++;
    }
    return i-1;
}

// Usage:

nthPolite(10); // 21


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
