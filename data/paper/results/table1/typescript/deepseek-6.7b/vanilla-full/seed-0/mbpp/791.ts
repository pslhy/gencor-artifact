function remove_nested(test_tup: any): [number, number, number, number] {
    const result = test_tup.filter((item: any) => !Array.isArray(item));
    return result;
}

let sample_input: [number, number[], number, number[], number, number, number, number] = [2, [4, 5], 7, [8, 9], 1, 2, 3, 4];
console.log(remove_nested(sample_input));   //Output: [2, 7, 1, 2, 3, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
