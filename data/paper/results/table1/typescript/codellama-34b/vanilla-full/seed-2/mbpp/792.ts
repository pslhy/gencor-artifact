function count_list(input_list: number[][]): number {
    let count = 0;
    for (const sub_list of input_list) {
        count += sub_list.length;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of arrays in a given number of arrays.
