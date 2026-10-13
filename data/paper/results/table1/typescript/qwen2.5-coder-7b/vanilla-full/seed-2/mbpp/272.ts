function rear_extract(test_list: [number, string, number][]): number[] { 
    return test_list.map(sub => sub[sub.length - 1]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array of arrays and returns an array containing the rear element of each array.
