function count_bidirectional(test_list: [number, number][]): number {
    const pairs = new Map<number, number>();
    test_list.forEach((pair) => {
        const key = pair[0];
        const value = pair[1];
        if (pairs.has(key)) {
            pairs.set(key, pairs.get(key)!) + value


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.