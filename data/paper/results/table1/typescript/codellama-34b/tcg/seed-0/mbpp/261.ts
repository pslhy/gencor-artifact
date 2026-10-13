function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    const result = Array(test_tup1[0] / test_tup2[0]);
    for (let i = 1; i < test_tup1[0]; i++) {
        result.push(test_tup1[0] / test_tup2[0]);
    }
    return result


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.