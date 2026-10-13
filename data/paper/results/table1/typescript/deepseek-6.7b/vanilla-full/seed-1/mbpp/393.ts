function max_length_list(input_list: number[][]): [number, number[]] {
    let max_length = -1;
    let max_index = -1;

    for (let i = 0; i < input_list.length; i++) {
        if (input_list[i].length > max_length) {
            max_length = input_list[i].length;
            max_index = i;
        }
    }
    return [max_index, input_list[max_index]];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
