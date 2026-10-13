function add_tuple(test_list: number[], test_tup: [number, number]): number[] { 
    // Spread the original array and concatenate with the tuple converted to an array
    let res_list: number[] = [...test_list, ...test_tup]; 
    return res_list; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
