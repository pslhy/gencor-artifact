function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    const tup_length = test_tup[0];
    const arr_length = test_tup[1];
    const output_arr = [
        test_list[0],
        test_list[tup_length],
        test_list[arr_length],
        test_list[tup_length],
        test_list[arr_length],
    ];
    return output_arr as [number, number, number, number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.