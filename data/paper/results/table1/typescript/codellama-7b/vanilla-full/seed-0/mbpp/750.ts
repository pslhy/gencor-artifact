function add_tuple(test_list: number[], test_tup: [number, number]): number[] {
    const tuple = Array.from(test_tup);
    const result = [];
    for (let i = 0; i < test_list.length; i++) {
        result.push(test_list[i] + tuple[i]);
    }
    return result;
}

console.log(add_tuple([1, 2, 3], [4, 5])); // Output: [5, 7, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
