function cummulative_sum(test_list: number[][]): number {
    let sum = 0;
    test_list.forEach(arr => arr.forEach(val => sum += val));
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the cumulative sum of all the values that are present in the given array of arrays.
