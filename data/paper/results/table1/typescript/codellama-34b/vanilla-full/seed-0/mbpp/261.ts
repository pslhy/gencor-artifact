function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    const result = Array(test_tup1.len())
    for i in range(len(test_tup1)):
        result[i] = test_tup1[i] / test_tup2[i]
    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.
