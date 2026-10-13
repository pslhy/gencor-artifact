function remove_nested(test_tup: any): [number, number, number, number] {
    const tup: [number, number, number, number] = [...test_tup]
    tup.pop()
    return tup
}

let tuple: [number, number, number, number] = [1, 2, 3, [4, 5, 6]];
console.log(remove_nested(tuple)); // [1, 2, 3, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
