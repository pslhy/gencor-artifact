function concatenate_tuple(test_tup: [string, string, number, string]): string {
    let result: [string, string] = [test_tup[0], test_tup[1]]
    let delim = test_tup[2] as string
    for (let i = 3; i < test_tup[3].length; i++) {
        result[0] += delim + test_tup[3][i]
    }
    return result[0] + delim + result[1]
}

let test_tuple =  ['hello', 'world', ',', '2022']
let result = concatenate_tuple(test_tuple as [string, string, number, string])


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.