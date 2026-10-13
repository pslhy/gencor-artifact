function concatenate_tuple(test_tup: [string, string, number, string]): string {
    const tuple_length: number = test_tup[0].length
    let concatenated_string: string = ""
    for (let idx: number = 0; idx < tuple_length; idx++) {
        concatenated_string += test_tup[0][idx] + test_tup[1][idx] + test_tup[2].toString() + test_tup[3]
    }
    return concatenated_string
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.