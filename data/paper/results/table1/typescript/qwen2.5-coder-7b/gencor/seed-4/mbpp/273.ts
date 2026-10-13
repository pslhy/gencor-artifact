
function substract_elements(test_tup1: [number, number, number], test_tup2: [number, number, number]): [number, number, number] { 
    return test_tup1.map((element, index) => element - test_tup2[index]) as [number, number, number];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and subtracts the elements of the first array by the elements of the second array with the same index.
