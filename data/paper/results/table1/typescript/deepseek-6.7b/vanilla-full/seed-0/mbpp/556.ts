function find_Odd_Pair(A: number[], N: number): number {
    let evenCount = 0;
    let oddCount = 0;
    for (let i = 0; i < N; i++) {
        if ((A[i] & 1) === 0) {
            evenCount++;
        } else {
            oddCount++;
        }
    }
    return evenCount * oddCount;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
