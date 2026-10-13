
function is_woodall(x: number): boolean { 
    if ((x & (x + 1)) !== 0) return false; // x must be even
    let n = x >>> 1; // divide by 2
    while (n !== 0) {
        if ((n & 1) !== 0) return false; // n must be even
        n >>>= 1; // divide by 2
    }
    return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
