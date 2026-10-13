function is_sublist(l: number[], s: number[]): boolean {
    let i = 0;
    for (const e of l) {
        if (s[i] === e) {
            i += 1;
            if (i === s.length) {
                return true;
            }
        } else {
            i = 0;
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.
