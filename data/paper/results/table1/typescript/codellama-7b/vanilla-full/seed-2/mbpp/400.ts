function extract_freq(test_list: [number, number][]): number {
    let unique_arr = [];
    for (let i = 0; i < test_list.length; i++) {
        if (unique_arr.indexOf(test_list[i]) == -1) {
            unique_arr.push(test_list[i]);
        }
    }
    return unique_arr.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
