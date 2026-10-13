function bell_Number(n: number): number {
    let bell = [[0 for i in range(0, n+1)] for i in range(0, n+1)];
    bell[0][0] = 1;
    for (let i in range(1, n+1)) {
        for (let j in range(1, i+1)) {
            bell[j][i] = bell[j-1][i] + bell[j][i-1];
        }
        if (i > 1) {
            bell[i][i] = bell[i-1][i-1];
        }
    }
    return bell[n][n-1] + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
