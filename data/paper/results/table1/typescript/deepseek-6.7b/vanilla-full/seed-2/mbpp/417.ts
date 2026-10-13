function group_tuples(Input: string[][]): string[][] {
    const groups: { [id: string]: string[][] } = {};
    for (const tuple of Input) {
        const key = tuple[0];
        if (!groups[key]) {
            groups[key] = [];
        }
        groups[key].push(tuple.slice(1));
    }
    return Object.values(groups);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
