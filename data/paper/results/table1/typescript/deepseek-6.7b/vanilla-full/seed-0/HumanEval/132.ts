function is_nested(string: string): boolean {
    let brackets = new Array<string>();
    for (let i=0; i<string.length; i++) {
        if (string[i] == '[')
            brackets.push('[');
        else {
            if (brackets.length && brackets[brackets.length-1] == '[') brackets.pop();
            else return false;
        }
    }
    return brackets.length == 0 ? false : true;
}


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
