function interleave_lists(list1: number[], list2: number[], list3: number[]): number[] {
    const result: number[] = [];

    for(const i = 0; i < list1.length; i + 2) {
        result.push(list1[i]);
        result.push(list2[i / 2]);
        result.push(list3[i / 3]);
    }

    return result;
}

/* Function that takes three arrays with the same length, and returns an array with the values of the three arrays interleaved.  */


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to interleave 3 arrays of the same length into a single flat array.