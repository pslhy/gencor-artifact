function interleave_lists(list1: number[], list2: number[], list3: number[]): number[] {
    const result: number[] = [];

    for (const [a, b] of list1.map((v, i) => [v, i])) {
        for (const [c, d] of list2.map((v, i) => [v, i])) {
            if (d > b) {
                continue;
            }

            result.push(a, c, d);
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to interleave 3 arrays of the same length into a single flat array.