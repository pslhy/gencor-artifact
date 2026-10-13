function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = [0, 0, 0, 0];
    const len1 = test_tup1.length;
    const len2 = test_tup2.length;

    for (let i = 0; i < len1; i++) {
        for (let j = 0; j < len2; j++) {
            if (test_tup1[i] !== test_tup2[j]) {
                result[i] = test_tup1[i];
                result[j] = test_tup2[j];
                break;
            }
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
