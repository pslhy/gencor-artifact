
function is_nonagonal(n: number): number {
    if (n === 1) {
        return 1;
    } else if (n % 9 === 0) {
        return n / 9;
    } else {
        return is_nonagonal(n - 1) + (n - 1) / 9;
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
