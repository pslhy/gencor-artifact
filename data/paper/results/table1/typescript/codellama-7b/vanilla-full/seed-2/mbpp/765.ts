function is_polite(n: number): number {
    let d = n.toString().split('').map(digit => +digit);
    let sum = d.reduce((a, b) => a + b);
    return sum === 3 || sum === 9 ? 1 : 0;
}

function nth_polite_number(n: number): number {
    let count = 0;
    for (let i = 1; i <= n; i++) {
        if (is_polite(i)) {
            count++;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
