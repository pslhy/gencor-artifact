
function is_nonagonal(n: number): number {
    return n % 24 === 0 && n > 0 && n % 4 !== 0
        ? n
        : is_nonagonal((n += 1));
}

function nth_nonagonal(n: number): number {
    return is_nonagonal((n -= 1)) + 1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
