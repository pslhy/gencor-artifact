function concatenate_tuple(test_tup: [string, string, number, string]): string { 
    const delim: string = '| '; 
    return test_tup.join(delim);
}

console.log(concatenate_tuple(["Gfg", "is", 4, "Best"]));
// Output: "Gfg| is| 4| Best"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
