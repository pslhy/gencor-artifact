function remove_nested(test_tup: any): [number, number, number, number] {
    const tup: [number, number, number, number] = [...test_tup];

    for (let i = 0; i < tup.length; i++) {
        for (let j = i + 1; j < tup.length; j++) {
            if ([tup[i], tup[j]].includes(-1)) {
                tup[i] = -1;
                tup[j] = -1;
            }
        }
    }

    return tup;
}

const test_arr = [
    [1, 2, 3, 4],
    [-1, -1, -1, -1],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16],
];

console.log(remove_nested(test_arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
