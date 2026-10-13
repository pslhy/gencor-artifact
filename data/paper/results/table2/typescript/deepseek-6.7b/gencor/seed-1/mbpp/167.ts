
function next_power_of_2(n: number): number {
    if (n <= 0) {
        return 1;
    }
    let power = 1;
    while (power < n) {
        if (power > Number.MAX_SAFE_INTEGER / 2) {
            throw new Error("Integer overflow.");
        }
        power *= 2;
    }
    return power;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
