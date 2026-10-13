function bitwise_xor(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    return test_tup1.map((num, idx) => num ^ test_tup2[idx]) as [number, number, number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform the mathematical bitwise xor operation across the given arrays.
