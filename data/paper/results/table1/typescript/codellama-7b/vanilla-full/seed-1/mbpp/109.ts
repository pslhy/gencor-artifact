function odd_Equivalent(s: string, n: number): number {
    let result = 0;
    for (let i = 0; i < s.length; i++) {
        const c = s[i];
        if (c === '1') {
            result += 1;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
