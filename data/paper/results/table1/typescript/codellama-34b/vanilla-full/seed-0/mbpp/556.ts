function find_Odd_Pair(A: number[], N: number): number {
    const xor = A.reduce((x, y) => x ^ y);
    let count = 0;
    for (let i = 0; i < A.length; i++) {
        for (let j = i + 1; j < A.length; j++) {
            if ((A[i] ^ A[j]) === xor) {
                count++;
            }
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
