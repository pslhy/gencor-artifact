function bell_number(n: number): number {
    let bell: number[] = new Array(n + 1).fill(0);
    bell[0] = 1;
    for (let i = 1; i <= n; i++) {
        bell[i] = 0;
        for (let j = 0; j < i; j++) {
            bell[i] += bell[j] * Math.pow(2, i - j - 1);
        }
    }
    return bell[n];
}

function partition_ways(setSize: number): number {
    return bell_number(setSize - 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
