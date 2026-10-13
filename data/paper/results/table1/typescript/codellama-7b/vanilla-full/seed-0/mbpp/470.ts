function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] {
    const res = Array<number>();
    for (let i = 0; i < test_tup.length - 1; i++) {
        res.push(test_tup[i] + test_tup[i + 1]);
    }
    return res;
}

console.log(add_pairwise([1, 2, 3, 4, 5]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.
