function max_difference(test_list: [number, number][]): number {
    let min_val = test_list[0][0];
    let max_diff = test_list[1][1]-test_list[0][1];
    for(let i = 0; i < test_list.length; i++) {
        if (test_list[i][1] - min_val > max_diff) {
            max_diff = test_list[i][1] - min_val;
        }
        if (test_list[i][0] < min_val) {
            min_val = test_list[i][0];
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
