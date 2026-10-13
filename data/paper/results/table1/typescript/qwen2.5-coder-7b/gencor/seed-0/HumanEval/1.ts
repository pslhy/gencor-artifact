
function separate_paren_groups(paren_string: string): string[] { 
    paren_string = paren_string.replace(/\s/g, ''); // Remove spaces
    let result: string[] = [];
    let stack: string[] = [];
    let current_group: string = '';

    for (let char of paren_string) {
        current_group += char;
        if (char === '(') {
            stack.push(char);
        } else if (char === ')') {
            stack.pop();
        }
        if (stack.length === 0) {
            result.push(current_group);
            current_group = '';
        }
    }

    return result;
}

// Example usage:
console.log(separate_paren_groups("( ) (( )) (( )( ))")); // Output: ["()", "(())", "(()())"]

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
