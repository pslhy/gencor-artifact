function move_num(test_str: string): string {
    let pattern = /\d+/g;
    let match = test_str.match(pattern);
    if (match) {
        let str_no_num = test_str.replace(pattern, '');
        let num_str = match.join('');
        return str_no_num + num_str;
    } else {
        return test_str;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
