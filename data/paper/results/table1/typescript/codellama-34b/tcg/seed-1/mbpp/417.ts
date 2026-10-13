function group_tuples(Input: string[][]): string[][] {
    const result: string[][] = [];
    const seen: Set<string> = new Set<string>();

    for (const [first, second] of Input.slice(0).sort((a, b) => a[0].localeCompare(b[0]))) {
        if (!seen.has(first)) {
            seen.add(first);
            result.push([first, second]);
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.