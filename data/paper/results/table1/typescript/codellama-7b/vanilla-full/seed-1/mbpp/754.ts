function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
    const result: any[] = [];

    for(const elem of l1) {
        const index1 = l1.indexOf(elem);
        const index2 = l2.indexOf(elem);
        const index3 = l3.indexOf(elem);
        if (index1 !== -1 && index2 !== -1 && index3 !== -1) {
            result.push({
                "index": index1,
                "element": elem
            });
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
