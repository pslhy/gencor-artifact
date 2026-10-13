function count_bidirectional(test_list: [number, number][]): number {
    let count = 0;
    const seen = new Set<string>();

    for (let [x, y] of test_list) {
        let key = Math.min(x, y);
        key = key << 16 | Math.max(x, y);
        if (!seen.has(key.toString())) {
            seen.add(key.toString());
            count++;
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
