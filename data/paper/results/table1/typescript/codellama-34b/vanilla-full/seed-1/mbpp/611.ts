function max_of_nth(test_list: number[][], N: number): number {
    let max = Number.MIN_SAFE_INTEGER;
    for (const num of test_list) {
        if (num[N] > max) {
            max = num[N];
        }
    }
    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.
