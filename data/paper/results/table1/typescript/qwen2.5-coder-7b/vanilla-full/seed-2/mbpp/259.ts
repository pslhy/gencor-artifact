function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {    
    let res: number[][] = []
    for (let ele1 of test_tup1)
        for (let ele2 of test_tup2)
            res.push([Math.max(...ele1), Math.max(...ele2)]);
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
