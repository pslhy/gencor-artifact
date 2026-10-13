function count_bidirectional(test_list: [number, number][]): number {
    const pairs = new Map<number, number>();
    test_list.forEach((pair) => {
        const [a, b] = pair;
        if (pairs.has(a)) {
            pairs.set(a, pairs.get(a) + 1);
        } else {
            pairs.set(a, 1);
        }
        if (pairs.has(b)) {
            pairs.set(b, pairs.get(b) + 1);
        } else {
            pairs.set(b, 1);
        }
    });
    return pairs.size;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
