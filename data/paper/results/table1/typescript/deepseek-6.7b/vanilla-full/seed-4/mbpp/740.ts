function tuple_to_dict(test_tup: [number, number, number, number, number, number]): {[key: number]: number} {
    let result: {[key: number]: number} = {};
    let i: number;
    for (i = 0; i < test_tup.length - 1; i += 2) {
        result[test_tup[i]] = test_tup[i + 1];
    }
    return result;
}
console.log(tuple_to_dict([1, 2, 3, 4, 5, 6]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given array to a key-value object using adjacent elements. https://www.geeksforgeeks.org/tsthon-convert-array-to-adjacent-pair-object/
