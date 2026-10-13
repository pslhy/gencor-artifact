function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] {
    return test_tup.slice(0, -1).map((val, i) => val + test_tup[i + 1])
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.
