function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    const [a, b] = test_tup;
    return [...test_list, a, b];
}

console.log(add_lists([1, 2, 3], [4, 5])); // [1, 2, 3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.
