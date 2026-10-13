function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
    let res: Set<number> = new Set();
    for(let i of test_tup1)
        res.add(i);
    for(let i of test_tup2)
       res.add(i);
    return Array.from(res).sort((a,b)=>a-b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.
