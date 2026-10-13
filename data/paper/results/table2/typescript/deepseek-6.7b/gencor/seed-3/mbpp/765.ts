
function is_polite(n: number): number {
    let b_count = 0;
    let upper_limit = 0;
    let i = 1;
    while (upper_limit < n) {
        i++;
        b_count = (i & (i - 1)) ? b_count : b_count + 1;
        upper_limit = Math.pow(2, b_count);
    }
    return i - 1;
}

console.log(is_polite(10))

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
