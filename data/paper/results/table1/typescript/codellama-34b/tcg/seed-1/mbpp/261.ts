function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = [0, 0, 0, 0];
    for (let i = 0; i < test_tup1[0].toString().length; i++) {
        result[0] = result[0] + (test_tup1[0].toString()[i] as number) / (test_tup2[0].toString()[i] as number);
    }
    for (let i = 0; i < test_tup1[1].toString().length; i++) {
        result[1] = result[1] + (test_tup1[1].toString()[i] as number) / (test_tup2[1].toString()[i] as number);
    }
    for (let i = 0; i < test_tup1[2].toString().length; i++) {
        result[2] = result[2] + (test_tup1[2].toString()[i] as number) / (test_tup2[2].toString()[i] as number);
    }
    for (let i = 0; i < test_tup1[3].toString().length; i++) {
        result[3] = result[3] + (test_tup1[3].toString()[i] as number) / (test_tup2[3].toString()[i] as number);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.