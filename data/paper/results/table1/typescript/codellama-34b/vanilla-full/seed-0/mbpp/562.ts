function Find_Max_Length(lst: number[][]): number {
    const visited = new Set<number[]>();
    let max = 0;
    for (const sublst of lst) {
        if (!visited.has(sublst)) {
            max = Math.max(max, sublst.length);
            visited.add(sublst);
        }
    }
    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
