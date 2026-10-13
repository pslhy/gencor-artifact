function concatenate_tuple(test_tup: [string, string, number, string]): string {
    let output = '';
    for (let i = 0; i < test_tup.length; i++) {
        output += test_tup[i];
    }
    return output;
}
console.log(concatenate_tuple(["my", "name", 2, "is"]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
