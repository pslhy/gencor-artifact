function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] { 
    let res: [number, number, number, number] = [test_tup[0] + test_tup[1], test_tup[1] + test_tup[2], test_tup[2] + test_tup[3], test_tup[3] + test_tup[4]];
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.