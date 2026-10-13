function max_of_nth(test_list: number[][], N: number): number { 
    let max_val = Number.MIN_SAFE_INTEGER; 
    for (let row of test_list) { 
        if (row.length > N && row[N] > max_val) { 
            max_val = row[N]; 
        } 
    } 
    return max_val; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which given a matrix represented as an array of arrays returns the max of the n'th column.
