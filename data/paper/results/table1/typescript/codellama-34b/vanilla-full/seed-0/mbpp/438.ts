function count_bidirectional(test_list: [number, number][]): number {
    const visited = new Set<number>();
    let count = 0;
    for (const [a, b] of test_list) {
        if (!visited.has(a) && !visited.has(b)) {
            count++;
            visited.add(a);
            visited.add(b);
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
