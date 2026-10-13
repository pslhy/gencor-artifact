function concatenate_tuple(test_tup: [string, string, number, string]): string {
    const tuple_length: number = test_tup.length
    let final_string: string = test_tup[0]
    for (let i = 1; i < tuple_length; i++) {
        final_string += " " + test_tup[i]
    }
    return final_string
}
console.log(concatenate_tuple(['hello', 'world', 1, '2'])) // hello world 1 2
console.log(concatenate_tuple(['hello', 'world', 1, '2', '3'])) // hello world 1 2 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
