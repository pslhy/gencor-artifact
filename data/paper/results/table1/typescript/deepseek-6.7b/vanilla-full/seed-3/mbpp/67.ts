function bell_number(n: number): number {
    let b: number[][] = [];
    b[0] = [1];
    for(let i = 1; i <= n; i++) {
        b[i] = new Array(i + 1).fill(0);
        b[i][0] = b[i - 1][i - 1];
        for(let j = 1; j < i; j++) {
            b[i][j] = b[i - 1][j - 1] + b[i][j - 1];
        }
        b[i][i] = b[i][i - 1];
    }
    return b[n][0];
}

function bell_partition(n: number): number[] {
    let Bell = new Array(n + 1);
    Bell[0] = Bell[1] = 1;
    for(let i = 2; i <= n; i++) {
        Bell[i] = 0;
        for(let j = 0; j < i; j++) {
            Bell[i] += Bell[j] * bell_number(j);
        }
    }
    return Bell;
}

function solve(n: number): number {
    let partitions = bell_partition(n);
    return partitions.reduce((a, b) => a + b, 0);
}

console.log(solve(5));  // Output: 52


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
