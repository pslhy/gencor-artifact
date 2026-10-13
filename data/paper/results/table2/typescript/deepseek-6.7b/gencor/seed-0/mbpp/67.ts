
function bell_number(n: number): number {
    let bell = new Array(n+1);
    for (let i=0; i<=n; i++){
        bell[i] = new Array(i+1);
    }

    bell[0][0] = 1;
    for (let i=1; i<=n; i++) {
        bell[i][0] = bell[i-1][i-1];
        for (let j=1; j<=i; j++) {
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1];
        }
    }

    return bell[n][0];
}

function partition_bell_number(n: number): number {
    let bell = new Array(n+1);
    for (let i=0; i<=n; i++){
        bell[i] = new Array(i+1);
    }

    bell[0][0] = 1;
    for (let i=1; i<=n; i++) {
        bell[i][0] = bell[i-1][i-1];
        for (let j=1; j<=i; j++) {
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1];
        }
    }

    let partition = 0;
    for (let i=0; i<=n; i++) {
        partition += bell[n][i];
    }

    return partition;
}

console.log(partition_bell_number(5));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
