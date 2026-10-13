function separate_paren_groups(paren_string: string): string[] {
    const result: string[] = [];

    let current_group = "";
    let balanced = true;

    for (let i = 0; i < paren_string.length; i++) {
        const char = paren_string[i];

        if (char === "(") {
            current_group += char;
        } else if (char === ")") {
            current_group += char;

            if (!balanced) {
                balanced = true;
            }
        }

        if (char !== " " && current_group === "") {
            current_group += char;
            balanced = false;
        }

        if (char === ")" && !balanced) {
            result.push(current_group);
            current_group = "";
            balanced = true;
        }
    }

    return result;
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
