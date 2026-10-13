function find_even_pair(A: number[]): number {
    const xorPairs: number[] = [];
    for (let i = 0; i < A.length; i++) {
        const a = A[i];
        for (let j = i + 1; j < A.length; j++) {
            const b = A[j];
            const xor = a ^ b;
            if (xor % 2 === 0) {
                xorPairs.push(a, b);
                break;
            }
        }
    }
    return xorPairs.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that counts the number of pairs of integers in an array that xor to an even number.
