function is_polite(n: number): number {
    while (n && (n & (n - 1)) !== 0) {
        n = n & (n - 1);
    }

    return n;
}

function nth_polite(n: number): number {
    let i = 0;
    let count = 0;
    while (count < n) {
        if (is_polite(i)) {
            count++;
        }
        i++;
    }

    return i - 1;
}

console.log(nth_polite(6)); // prints 9


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
