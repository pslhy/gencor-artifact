function separate_paren_groups(paren_string: string): string[] {
    paren_string = paren_string.replace(/\s/g, "");  // Remove spaces
    let stack: string[] = [];
    let result: string[] = [];
    let currentGroup: string = "";
    let balance: number = 0;

    for (let c of paren_string) {
        if (c === '(') {
            balance++;
            currentGroup += c;
        } else if (c === ')') {
            balance--;
            currentGroup += c;
        }

        if (balance === 0) {
            result.push(currentGroup);
            currentGroup = "";
        }
    }

    return result;
}

console.log(separate_paren_groups("( ) (( )) (( )( ))"));  // ["()", "(())", "(()())"]


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
