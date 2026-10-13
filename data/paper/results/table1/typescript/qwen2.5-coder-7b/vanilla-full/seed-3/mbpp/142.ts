function count_samepair(list1: number[], list2: number[], list3: number[]): number { 
    let traversal_length = Math.min(list1.length, list2.length, list3.length);
    let same_count = 0;
    for (let i = 0; i < traversal_length; i++) {
        if (list1[i] === list2[i] && list2[i] === list3[i]) {
            same_count++;
        }
    }
    return same_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count number items that are identical in the same position of three given arrays.
