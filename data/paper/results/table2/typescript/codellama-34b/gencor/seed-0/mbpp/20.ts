
function is_woodall(x: number): boolean {
    if (x === 1 || x % 2 === 0) {
        return false;
    }
    for (let i = 3; i * i <= x; i += 2) {
        if (x % i === 0) {
            return false;
        }
    }
    return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
