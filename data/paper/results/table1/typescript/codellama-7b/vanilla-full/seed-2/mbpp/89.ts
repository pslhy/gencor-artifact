function closest_num(N: number): number {
    let smallerN = N - 1;
    while (smallerN < N) {
        smallerN++;
        const diff = N - smallerN;
        if (diff === 0) {
            break;
        } else if (diff < 0) {
            return smallerN;
        }
    }
    return smallerN;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
