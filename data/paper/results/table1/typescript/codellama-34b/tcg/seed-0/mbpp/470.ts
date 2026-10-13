function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] {
    const res = Array(test_tup[0]<<2).fill(0);
    for (let i = 0; i < res.length; i++) {
        res[i] += test_tup[0];
        res[i] += test_tup[1];
        res[i] += test_tup[2];
        res[i] += test_tup[3];
        res[i] += test_tup[4];
    }
    return res


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.