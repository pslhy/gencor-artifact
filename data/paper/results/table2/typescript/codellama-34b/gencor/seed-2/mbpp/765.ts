
function is_polite(n: number): number {
    let count = 0;
    for (let i = 1; i < n; i++) {
        if (n % i === 0) {
            count++;
        }
    }
    return count;
}

function nth_polite(n: number): number {
    let count = 0;
    let i = 2;
    while (count < n) {
        if (is_polite(i)) {
            count++;
        }
        i++;
    }
    return i - 1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
