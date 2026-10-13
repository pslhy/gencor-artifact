function parse_nested_parens(paren_string: string): number[] {
    let result: number[] = [];
    let stack: number[] = [];
    for (let char of paren_string) {
        if (char === "(") {
            stack.push(char.length);
        } else if (char === ")") {
            let previousLevel = stack.pop()!.toString().length;
            let currentLevel = previousLevel - 1;
            result.push(currentLevel);
        }
    }
    return result;
}

parse_nested_parens("(()()) ((())) () ((())()())");


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