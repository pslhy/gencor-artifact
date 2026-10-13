function sort_third(l: number[]): number[] {
    let sortedIndices: number[] = [];
    for (let i = 2; i < l.length; i += 3) {
        sortedIndices.push(i);
    }
    const sortedValues: number[] = l.filter((_, i) => sortedIndices.includes(i)).sort((a, b) => a - b);
    for (let i = 0, k = 0; i < l.length; i++) {
        if (sortedIndices.includes(i)) {
            l[i] = sortedValues[k++];
        }
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
