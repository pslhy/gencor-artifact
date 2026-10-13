function tuple_str_int(test_str: string): [number, number, number] {
    const str_arr = test_str.split(",");
    const int_arr = str_arr.map((element: string) => {
        return parseInt(element);
    });
    return int_arr as [number, number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.