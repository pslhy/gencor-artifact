function find_Odd_Pair(A: number[], N: number): number {
    let odd_count = 0;
    let even_count = 0;

    for (let i = 0; i < N; i++) {
        if (A[i] % 2 === 0) {
            even_count++;
        } else {
            odd_count++;
        }
    }

    return (odd_count * (odd_count - 1)) / 2 + (even_count * (even_count - 1)) / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
