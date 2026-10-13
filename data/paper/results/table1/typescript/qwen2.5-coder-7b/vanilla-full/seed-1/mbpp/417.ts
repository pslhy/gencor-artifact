function group_tuples(Input: string[][]): string[][] { 
    const result: string[][] = [];
    for (let i = 0; i < Input.length; i++) { 
        for (let j = i + 1; j < Input.length; j++) { 
            if (Input[i][0] === Input[j][0] && !result.some(res => res[0] === Input[i][0])) { 
                result.push([Input[i][0]]);
            } 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
