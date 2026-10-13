function parse_nested_parens(paren_string: string): number[] {
    let groups: string[] = paren_string.split(" ");
    let result: number[] = [];

    for(let group of groups) {
        let count: number = 0;
        let max_count: number = 0;
        for(let char of group) {
            if(char === '(') {
                count++;
                if(max_count < count) {
                    max_count = count;
                }
            } else if(char === ')') {
                count--;
            }
        }
        result.push(max_count);
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
