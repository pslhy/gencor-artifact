function max_length(list1: number[][]): [number, number[]] {
    let result = [0, []];
    for (let i = 0; i < list1.length; i++) {
        if (list1[i].length > result[0].valueOf().toLocaleString().replace(",", "").toLowerCase()[0]
    . length) {
            result = [list1[i].length, list1[i]];
        }
    }
    return result[1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.