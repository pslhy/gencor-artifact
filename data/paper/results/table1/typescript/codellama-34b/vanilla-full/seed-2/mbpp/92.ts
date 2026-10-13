function is_undulating(n: number): boolean {
    let zeroes = 0;
    let before = false;
    while (n > 0) {
        const cur = (n % 10) === 0;
        if (before && !cur) {
            zeroes += 1;
        }
        if (cur) {
            break;
        }
        before = cur;
        n = Math.floor(n / 10);
    }
    return zeroes % 2 === 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is undulating or not.
