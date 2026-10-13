function count_bidirectional(test_list: [number, number][]): number { 
    let result = 0; 
    for (let i of test_list) { 
        if (test_list.includes([i[1], i[0]])) { 
            result += 1; 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
