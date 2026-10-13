function tuple_modulo(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] { 
    let res: [number, number, number, number] = test_tup1;
    for (let i = 0; i < test_tup1[0].toFixed(0).length; i++) { 
        res[3] = test_tup1[3] % test_tup2[3];
        res[2] = test_tup1[2] % test_tup2[2];
        res[1] = test_tup1[1] % test_tup2[1];
        res[0] = test_tup1[0] % test_tup2[0];
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes two arrays of the same length and performs the element wise modulo.