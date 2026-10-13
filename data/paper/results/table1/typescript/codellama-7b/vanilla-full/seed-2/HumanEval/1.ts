function separate_paren_groups(paren_string: string): string[] {
    let output: string[] = [];
    let current_group: string[] = [];

    for (const char of paren_string) {
        if (char === '(') {
            current_group.push(char);
        } else if (char === ')') {
            current_group.pop();
            if (current_group.length === 0) {
                output.push(current_group.join(''));
                current_group = [];
            }
        }
    }

    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
//     separate those group into separate strings and return the array of those.
//     Separate groups are balanced (each open brace is properly closed) and not nested within each other
//     Ignore any spaces in the input string.
//     >>> separate_paren_groups("( ) (( )) (( )( ))")
//     ["()", "(())", "(()())"]
