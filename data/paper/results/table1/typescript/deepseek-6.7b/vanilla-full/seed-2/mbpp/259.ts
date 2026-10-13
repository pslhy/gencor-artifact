function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let sum1 = test_tup1.reduce((a, [x1, y1]) => a + x1 + y1, 0);
    let sum2 = test_tup2.reduce((a, [x2, y2]) => a + x2 + y2, 0);
  
    return sum1 > sum2 ? test_tup1 : test_tup2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
