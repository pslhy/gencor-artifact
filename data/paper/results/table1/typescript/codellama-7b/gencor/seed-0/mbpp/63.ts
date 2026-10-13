
function max_difference(test_list: [number, number][]): number {
    const sorted_list = test_list.sort((a, b) => a[0] - b[0]);
    let max_diff = 0;
    for (const [a, b] of sorted_list.slice(1)) {
        max_diff = Math.max(max_diff, b - a);
    }
    return max_diff;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
