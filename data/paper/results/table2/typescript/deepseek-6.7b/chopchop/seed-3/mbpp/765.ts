
function is_polite(n: number): number {
    let b: number = 1;
    let upper_limit: number = Math.floor(Math.log2(n)) + 1;
    for(let i: number = 0; i < upper_limit; i++) {
        let c: number = b + 2 ** i;
        if(n >= c) {
            n -= c;
        }
    }
    return n === 0 ? 1 : 0;
}

function nth_polite(n: number): number {
    let count: number = 0;
    let i: number = 1;
    while(count < n) {
        count += is_polite(i);
        i++;
    }
    return i-1;
}

// Example usage:

let answer = nth_polite(5);  // should return 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
