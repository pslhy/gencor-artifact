function multiple_to_single(L: number[]): number {
    let result = 0;
    for (let i = 0; i < L.length; i++) {
        const x = L[i] << (8 * i);
        result |= x;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to join an array of multiple integers into a single integer.
