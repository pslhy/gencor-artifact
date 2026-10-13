
function extract_freq(test_list: [number, number][]): number {
    let arr = test_list.map(JSON.stringify);
    let uniqueArr = [...new Set(arr)];
    return uniqueArr.length;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the number of unique arrays in the given array.
