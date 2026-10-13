function remove_nested(test_tup: any): [number, number, number, number] {
    let nested_tup = [test_tup[1][2], test_tup[1][3]];
    return nested_tup;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
