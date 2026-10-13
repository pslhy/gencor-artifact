function extract_freq(test_list: [number, number][]): number {
    let freq = new Set();
    for(let i = 0; i < test_list.length; i++) {
        freq.add(JSON.stringify(test_list[i]));
    }
    return freq.size;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
