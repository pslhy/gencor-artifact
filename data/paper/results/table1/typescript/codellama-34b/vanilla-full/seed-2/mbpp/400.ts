function extract_freq(test_list: [number, number][]): number {
    let result = 0;
    for (const sub_array of test_list) {
        const sorted_sub_array = sub_array.sort();
        const unique_sub_array = [...new Set(sorted_sub_array)];
        result += unique_sub_array.length;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
