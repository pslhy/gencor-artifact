function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    const result = [...test_list, ...test_tup[0].toString().split('').map(n => parseInt(n))];
    return result as [number, number, number, number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.