function check_K(test_tup: number[], K: number): boolean {
    let set = new Set(test_tup);
    return set.has(K);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given arrays contain the k or not.
