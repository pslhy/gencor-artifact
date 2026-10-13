
function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
    let res: number[] = [];
    for (let item of test_tuple) {
        if (Array.isArray(item)) {
            res.push(...extract_even(item as [number, number, [number, number]][] | [number, number, [number, number]] | [number, number, [number, number]] | [number, number, [number, number]] | number[] | number[] | number[] | number[] | number | number | number | number | number | number | number | number | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] | number[] |

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
