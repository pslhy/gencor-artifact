function interleave_lists(list1: number[], list2: number[], list3: number[]): number[] {
    const result: number[] = [];

    for(const i = 0; i < list1.length; i++) {
        result.push(list1[i]);
        result.push(list2[i]);
        result.push(list3[i]);
    }

    return result;
}

console.log(interleave_lists([1, 2, 3], [4, 5, 6], [7, 8, 9])); // [1, 4, 2, 7, 3, 8, 5, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to interleave 3 arrays of the same length into a single flat array.
