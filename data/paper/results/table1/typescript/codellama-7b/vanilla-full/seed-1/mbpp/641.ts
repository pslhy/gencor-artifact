function is_nonagonal(n: number): number {
    return n % 2 === 0 && n % 3 === 0;
}

function nonagonal_number(n: number): number {
    let i = 1;
    while (is_nonagonal(i)) {
        i++;
    }
    return i;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
