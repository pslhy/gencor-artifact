function max_difference(test_list: [number, number][]): number {
    const sorted_list = test_list.sort((a, b) => a[0] - b[0]);
    let max_diff = 0;
    for (let i = 1; i < sorted_list.length; i++) {
        const diff = sorted_list[i][0] - sorted_list[i - 1][1];
        if (diff > max_diff) {
            max_diff = diff;
        }
    }
    return max_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.