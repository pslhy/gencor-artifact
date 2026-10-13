
function remove_nested(test_tup: any): [number, number, number, number] {
    const tup: [number, number, number, number] = [...arguments];
    let result: [number, number, number, number];
    for (let i = 0; i < tup.length; i++) {
        if (!Array.isArray(tup[i])) {
            result[i] = tup[i];
        }
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
