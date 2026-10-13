function interleave_lists(list1: number[], list2: number[], list3: number[]): number[] {
    const result: number[] = [];

    for (const [a, b, c] of zip_lists(list1, list2, list3)) {
        result.push(a);
        result.push(b);
        result.push(c);
    }

    return result;
}

function zip_lists(list1: number[], list2: number[], list3: number[]): number[][] {
    return [
        list1,
        list2,
        list3
    ].reduce((a, b) => a.map((val, i) => [val, b[i]]), []);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to interleave 3 arrays of the same length into a single flat array.
