function count_bidirectional(test_list: [number, number][]): number {
    let count = 0;
    const set = new Set();
    for (let item of test_list) {
        const sorted = item.slice().sort((a, b) => a - b);
        const key = `${sorted[0]},${sorted[1]}`;
        if (set.has(key)) {
            count += 1;
        } else {
            set.add(key);
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
