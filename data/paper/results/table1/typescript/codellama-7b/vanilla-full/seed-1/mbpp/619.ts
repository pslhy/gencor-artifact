function move_num(test_str: string): string {
    const num_regex = /\d+/g;
    const non_num_regex = /\D+/g;
    return test_str.replace(non_num_regex, "").replace(num_regex, "").concat(test_str.replace(num_regex, "").replace(non_num_regex, ""));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
