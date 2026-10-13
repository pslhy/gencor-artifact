function max_length_list(input_list: number[][]): [number, number[]] {
    let max_length = 0;
    let result: number[] = [];

    for (let list of input_list) {
        if (list.length > max_length) {
            max_length = list.length;
            result = list;
        }
    }

    return [max_length, result];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.
