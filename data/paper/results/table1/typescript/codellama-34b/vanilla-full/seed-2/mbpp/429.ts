function and_tuples(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = [0, 0, 0, 0];
    const len1 = test_tup1.length;
    const len2 = test_tup2.length;
    for (let i = 0; i < len1; i++) {
        for (let j = 0; j < len2; j++) {
            const v1 = test_tup1[i]
            const v2 = test_tup2[j]
            if (v1 === v2) {
                result[i] += v1
            }
        }
    }
    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the elementwise and arrays from the given two arrays.
