function sort_third(l: number[]): number[] {
    let sortedIndices: number[] = [];
    let unsortedIndices: number[] = [];

    for (let i = 0; i < l.length; i++) {
        if (i % 3 === 0) {
            sortedIndices.push(i);
        } else {
            unsortedIndices.push(i);
        }
    }

    let sortedValues: number[] = sortedIndices.map(i => l[i]).sort((a, b) => a - b);

    for (let i = 0; i < sortedIndices.length; i++) {
        l[sortedIndices[i]] = sortedValues[i];
    }

    return l;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     This function takes an array l and returns an array l' such that
//     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
//     to the values of the corresponding indicies of l, but sorted.
//     >>> sort_third([1, 2, 3])
//     [1, 2, 3]
//     >>> sort_third([5, 6, 3, 4, 8, 9, 2])
//     [2, 6, 3, 4, 8, 9, 5]