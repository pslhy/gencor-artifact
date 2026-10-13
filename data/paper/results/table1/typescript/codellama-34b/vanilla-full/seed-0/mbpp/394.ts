function check_distinct(test_tup: number[]): boolean {
    const set = new Set(test_tup);
    return set.size === test_tup.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.
