function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    const result: number[][] = [];

    for(let i = 0; i < test_tup1.length; i++) {
        const maxElement1 = Math.max(...test_tup1[i]);
        const maxElement2 = Math.max(...test_tup2[i]);

        result.push([maxElement1, maxElement2]);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
