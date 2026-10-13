function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let res: [number, number, number, number] = [0, 0, 0, 0];
    
    if(test_tup2[0] != 0) res[0] = test_tup1[0] / test_tup2[0];
    if(test_tup2[1] != 0) res[1] = test_tup1[1] / test_tup2[1];
    if(test_tup2[2] != 0) res[2] = test_tup1[2] / test_tup2[2];
    if(test_tup2[3] != 0) res[3] = test_tup1[3] / test_tup2[3];

    return res;
}

console.log(division_elements([10, 20, 30, 40], [2, 4, 5, 8]));  // [5, 5, 6, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.
