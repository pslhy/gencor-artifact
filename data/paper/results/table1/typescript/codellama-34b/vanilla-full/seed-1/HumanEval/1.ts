function separate_paren_groups(paren_string: string): string[] {
    const groups: string[] = [];

    let start = 0;
    while (start < paren_string.length) {
        let end = start + 1;
        let depth = 1;

        while (end < paren_string.length && depth > 0) {
            if (paren_string[end] === "(") {
                depth++;
            } else if (paren_string[end] === ")") {
                depth--;
            }
            end++;
        }

        groups.push(paren_string.substring(start, end));
        start = end;
    }

    return groups;
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
