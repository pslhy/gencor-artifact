function closest_num(N: number): number {
    let result = -1;
    for (let i = 1; i < N; i++) {
        if (i < N && N - i < N - result) {
            result = i;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
