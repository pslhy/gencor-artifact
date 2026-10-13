function is_nonagonal(n: number): number {
    return n % 24 === 0 ? 1 : 0;
}

function nth_nonagonal_number(n: number): number {
    let count = 0;
    let num = 0;
    while (count < n) {
        num++;
        if (is_nonagonal(num)) {
            count++;
        }
    }
    return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.