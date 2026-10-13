function add_tuple(test_list: number[], test_tup: [number, number]): number[] {
    const tuple_length = test_tup.length;
    const arr_length = test_list.length;
    for (let i = 0; i < tuple_length; i++) {
        test_list[arr_length + i] = test_tup[i];
    }
    return test_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
