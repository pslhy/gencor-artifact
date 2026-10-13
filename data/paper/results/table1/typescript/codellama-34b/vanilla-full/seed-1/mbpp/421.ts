function concatenate_tuple(test_tup: [string, string, number, string]): string {
    let result: [string, string] = [test_tup[0], test_tup[1]]
    let delim = test_tup[2] as unknown as string
    let final_result = result.reduce((acc, curr) => acc + delim + curr)
    return final_result
}

console.log(concatenate_tuple(["str1", "str2", "__,__", "str3"]))


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
