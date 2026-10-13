function move_num(test_str: string): string {
    let num_regex = /\d+/g;
    let num_arr = test_str.match(num_regex);
    let new_str = "";
    for (let i = 0; i < test_str.length; i++) {
        if (!num_regex.test(test_str[i])) {
            new_str += test_str[i];
        }
    }
    for (let i = 0; i < num_arr.length; i++) {
        new_str += num_arr[i];
    }
    return new_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
