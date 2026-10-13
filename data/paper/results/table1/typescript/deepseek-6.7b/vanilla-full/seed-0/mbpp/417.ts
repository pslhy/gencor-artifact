function group_tuples(Input: string[][]): string[][] {
    const groups: Map<string, string[][]> = Input.reduce((groups, arr) => {
        const key = arr[0];
        if (!groups.has(key)) {
            groups.set(key, []);
        }
        groups.get(key)?.push(arr);
        return groups;
    }, new Map<string, string[][]>());

    return Array.from(groups.values());
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
