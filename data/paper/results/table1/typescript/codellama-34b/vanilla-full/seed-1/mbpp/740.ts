function tuple_to_dict(test_tup: [number, number, number, number, number, number]): {[key: number]: number} {
    const dict: {[key: number]: number} = {};
    for (let i = 0; i < test_tup.length; i += 2) {
        dict[test_tup[i]] = test_tup[i + 1];
    }
    return dict;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given array to a key-value object using adjacent elements. https://www.geeksforgeeks.org/tsthon-convert-array-to-adjacent-pair-object/
