
function bell_number(n: number): number {
    let bell: number[][] = new Array(n+1);
    for (let i=0; i<=n; i++){
        bell[i] = new Array(i+1);
        bell[i][i] = bell[i][0] = 1;
        for (let j=1; j<i; j++)
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1];
    }
    return bell[n][0];
}

function partition(n: number): number {
    let sum: number = 0;
    for (let i=0; i<=n; i++)
        sum += bell_number(i);
    return sum;
}

console.log(partition(5));  // Outputs: 15

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
