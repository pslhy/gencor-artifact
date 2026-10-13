function max_Abs_Diff(arr: number[]): number {
    let max_diff = 0;
    for(const el of arr) {
        const value_1 = Math.abs(el);
        for (const el2 of arr) {
            const value_2 = Math.abs(el2);
            max_diff = Math.max(max_diff, Math.abs(value_1 - value_2));
        }
    }
    return max_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
