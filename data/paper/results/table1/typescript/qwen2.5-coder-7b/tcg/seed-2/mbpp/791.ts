function remove_nested(test_tup: any): [number, number, number, number] { 
    let res = [test_tup];
    return res[0] as [number, number, number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.