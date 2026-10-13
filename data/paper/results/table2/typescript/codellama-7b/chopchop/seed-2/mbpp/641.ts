
function is_nonagonal(n: number): number {
    return n % 24 === 0 && n > 0 && n % 4 !== 0
        ? n
        : is_nonagonal((n * 3) + 1);
}

function nth_nonagonal(n: number): number {
    let nonagonal = 1;
    for (let i = 1; i <= n; i++) {
        nonagonal = is_nonagonal(nonagonal);
    }
    return nonagonal;
}

const nth_nonagonal_number = nth_nonagonal(5);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
