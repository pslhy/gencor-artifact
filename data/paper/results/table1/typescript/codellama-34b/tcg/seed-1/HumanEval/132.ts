function is_nested(string: string): boolean {
    const brackets = [['[', ']']];
    const stack = [];

    for (let char of string) {
        if (char === '[') {
            stack.push(char);
        } else if (char === ']') {
            if (stack.length === 0) {
                return false;
            } else if (brackets[stack[stack.length - 1] === char && brackets[stack[stack.length - 2] === '[' && stack[stack.length - 3] === char && stack[stack.length - 4] === '[' && stack[stack.length - 5] === char && stack[stack.length - 6] === '[' && stack[stack.length - 7] === '[ ]]]) { // Check for a valid subsequence of brackets where at least one bracket is nested. If found, return true. else return false.  static function isPermitted()``];


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a string as input which contains only square brackets.
//     The function should return true if and only if there is a valid subsequence of brackets
//     where at least one bracket in the subsequence is nested.
//     >>> is_nested("[[]]")
//     true
//     >>> is_nested("[]]]]]]][[[[[]")
//     false
//     >>> is_nested("[][]")
//     false
//     >>> is_nested("[]")
//     false
//     >>> is_nested("[[][]]")
//     true
//     >>> is_nested("[[]][[")
//     true