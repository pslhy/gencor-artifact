function is_nonagonal(n: number): number {
    return n % 24 === 0;
}

function find_nth_nonagonal(n: number): number {
    let count = 0;
    for (let i = 1; i <= n; i++) {
        count = i;
        if (is_nonagonal(count)) {
            break;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
