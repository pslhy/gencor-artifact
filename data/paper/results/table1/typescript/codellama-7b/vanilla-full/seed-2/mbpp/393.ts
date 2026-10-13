function max_length_list(input_list: number[][]): [number, number[]] {
    let max_len = -1;
    let max_index = -1;

    input_list.forEach((arr, index) => {
        if (arr.length > max_len) {
            max_len = arr.length;
            max_index = index;
        }
    });

    return [max_len, input_list[max_index]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
