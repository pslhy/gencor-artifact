
function bell_Number(n: number): number {
    let bell = [[0]];
    bell[0][0] = 1;

    for(let i = 1; i < n; i++) {
        bell.push([0]);
        for(let j = 0; j <= i; j++) {
            bell[i].push(0);
        }
    }

    for(let i = 1; i < n; i++) {
        bell[i][0] = bell[i-1][i-1];
        for(let j = 1; j <= i; j++) {
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1];
        }
    }

    return bell[n-1][0];
}

console.log(bell_Number(5)); // 52

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
