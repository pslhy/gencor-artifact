
function group_tuples(Input: string[][]): string[][] {
    let output: string[][] = [];
    for (let i = 0; i < Input.length; i++) {
        for (let j = 0; j < Input[i].length; j++) {
            if (Input[i][j] === Input[i][j + 1]) {
                if (output.length > 0 && output[output.length - 1][output[output.length - 1].length - 1] === Input[i][j]) {
                    continue;
                }
                output.push([Input[i][j]]);
            }
        }
    }
    return output;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
