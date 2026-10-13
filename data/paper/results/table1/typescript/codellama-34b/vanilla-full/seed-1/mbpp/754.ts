function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
    let result: any[] = [];

    for(const i in l1){
        const value_1 = l1[i];
        const value_2 = l2[i];
        const value_3 = l3[i];

        if (value_1 !== undefined && value_2 !== undefined && value_3 !== undefined){
            result.push({ index: i, value: [value_1, value_2, value_3] })
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.
