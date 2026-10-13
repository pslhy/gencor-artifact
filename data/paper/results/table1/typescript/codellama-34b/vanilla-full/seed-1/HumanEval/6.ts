function parse_nested_parens(paren_string: string): number[] {
    const groups = paren_string.split(" ");
    const nesting_levels = groups.map((group) => {
        let level = 0;
        let max_level = 0;
        for (let i = 0; i < group.length; i++) {
            if (group[i] === "(") {
                level++;
            } else if (group[i] === ")") {
                level--;
                if (level > max_level) {
                    max_level = level;
                }
            }
        }
        return max_level;
    });
    return nesting_levels;
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
