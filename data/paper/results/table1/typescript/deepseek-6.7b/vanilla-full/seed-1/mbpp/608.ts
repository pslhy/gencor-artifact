function bell_Number(n: number): number {
    let bell: Array<Array<number>> = Array(n+1).fill(0).map(()=> Array(n+1).fill(0));
    bell[0][0] = 1;
    for(let i = 1; i<=n; i++) {
        // Explicitly fill for j = 0
        bell[i][0] = bell[i-1][i-1];

        // Fill for remaining values of j
        for(let j=1; j<=i; j++)
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1];
    }

    // Return last element of last row as it contains nth bell number
    return bell[n][n-1];
}

console.log(bell_Number(5));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
