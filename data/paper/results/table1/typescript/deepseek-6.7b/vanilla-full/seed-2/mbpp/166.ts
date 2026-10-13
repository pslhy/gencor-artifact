function find_even_pair(A: number[]): number {
    let evenCount = 0;
    let oddCount = 0;

    for (let i=0; i<A.length; i++) {
        if (A[i] % 2 === 0)
            evenCount++;
        else
            oddCount++;
    }

    return evenCount * (evenCount - 1) / 2 + oddCount * (oddCount - 1) / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that counts the number of pairs of integers in an array that xor to an even number.
