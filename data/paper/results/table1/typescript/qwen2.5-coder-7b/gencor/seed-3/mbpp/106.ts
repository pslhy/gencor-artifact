
function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] { 
    let res_list: [number, number, number, number, number] = [...test_list, ...test_tup] as [number, number, number, number, number];
    return res_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.
