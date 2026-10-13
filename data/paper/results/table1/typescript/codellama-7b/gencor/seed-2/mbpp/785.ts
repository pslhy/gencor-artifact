
function tuple_str_int(test_str: string): [number, number, number] {
    let output: [number, number, number] = [0, 0, 0];
    if (test_str.length > 3) {
        output[0] = parseInt(test_str.substring(0, 2));
        output[1] = parseInt(test_str.substring(2, 4));
        output[2] = parseInt(test_str.substring(4, 6));
    }
    return output;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.
