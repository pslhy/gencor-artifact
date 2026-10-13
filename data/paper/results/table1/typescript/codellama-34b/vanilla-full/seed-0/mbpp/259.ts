function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    const tup1_length = test_tup1.length;
    const tup2_length = test_tup2.length;

    if (tup1_length === 0 || tup2_length === 0) {
        return [ [...test_tup1], [...test_tup2] ];
    }

    if (tup1_length > tup2_length) {
        const max_element = Math.max(...test_tup1);
        test_tup1.push(max_element);
        return [ [...test_tup1], [...test_tup2] ];
    } else if (tup1_length < tup2_length) {
        const max_element = Math.max(...test_tup2);
        test_tup2.push(max_element);
        return [ [...test_tup1], [...test_tup2] ];
    }

    const max_element = Math.max(...test_tup1);
    test_tup1.push(max_element);
    return [ [...test_tup1], [...test_tup2] ];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
