function max_difference(test_list: [number, number][]): number {
    let result = 0;
    for (const [i, j] of test_list) {
        const diff = j - i;
        if (diff > result) {
            result = diff;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
