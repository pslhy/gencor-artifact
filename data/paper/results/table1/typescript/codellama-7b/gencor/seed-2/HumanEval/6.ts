
function parse_nested_parens(paren_string: string): number[] {
    let result: number[] = [];
    let stack: number[] = [];
    for (let char of paren_string) {
        if (char === "(") {
            stack.push(char.length);
        } else if (char === ")") {
            let closing_paren_length = stack.pop()!.toString().length;
            if (stack.length > 0) {
                result.push(stack.length + closing_paren_length);
            } else {
                result.push(closing_paren_length);
            }
        }
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
//     For each of the group, output the deepest level of nesting of parentheses.
//     E.g. (()()) has maximum two levels of nesting while ((())) has three.
//     >>> parse_nested_parens("(()()) ((())) () ((())()())")
//     [2, 3, 1, 3]
