function upper_ctr(str: string): number {
    let count = 0;
    for (const c of str) {
        if (c.toUpperCase() === c) {
            count++;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the upper case characters in a given string.
