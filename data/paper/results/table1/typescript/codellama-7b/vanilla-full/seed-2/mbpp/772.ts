function remove_length(test_str: string, K: number): string {
    let output = '';
    for (let i = 0; i < test_str.length; i++) {
        const word = extract_word(test_str, i);
        if (word.length !== K) {
            output += word + ' ';
        }
    }
    return output.trim();
}
function extract_word(test_str: string, i: number): string {
    let word = '';
    while (i < test_str.length && !is_space(test_str[i])) {
        word += test_str[i];
        i++;
    }
    return word;
}
function is_space(c: string): boolean {
    return c === ' ' || c === '\n' || c === '\t' || c === '\r';
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.
