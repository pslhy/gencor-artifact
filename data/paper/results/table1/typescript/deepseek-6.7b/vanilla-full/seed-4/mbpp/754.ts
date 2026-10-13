function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
    let result: number[][] = l1.map((n, i) => [n, i]).filter(([n, i]) => n === l2[i] && n === l3[i]);
    result = result.map(([n, i]) => n);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.
