function check_smaller(test_tup1: [number, number, number], test_tup2: [number, number, number]): boolean {
    const tup1_array = Array.from(test_tup1);
    const tup2_array = Array.from(test_tup2);
    return tup1_array.every((elem, i) => elem < tup2_array[i]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if each element of second array is smaller than its corresponding element in the first array.
