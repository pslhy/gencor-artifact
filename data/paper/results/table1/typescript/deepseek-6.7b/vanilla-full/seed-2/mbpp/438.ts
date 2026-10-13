function count_bidirectional(test_list: [number, number][]): number {
    let sum = 0;
    for (let i = 0; i < test_list.length; i++) {
        sum += Math.abs(test_list[i][0] - test_list[i][1]) + 1;
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
