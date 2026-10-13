function correct_bracketing(brackets: string): boolean {
    let stack: string[] = [];

    for(let bracket of brackets) {
        if(bracket === '(') {
            stack.push(bracket);
        } else if(stack.length === 0) {
            return false;  // if it is ")" and stack is empty, there is no corresponding opening bracket
        } else {
            stack.pop();  // if it is ")" and stack is not empty, pop the opening bracket
        }
    }

    return stack.length === 0;  // if stack is empty, all opening brackets have corresponding closing brackets
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     brackets is a string of "(" and ")".
//     return true if every opening bracket has a corresponding closing bracket.
//     >>> correct_bracketing("(")
//     false
//     >>> correct_bracketing("()")
//     true
//     >>> correct_bracketing("(()())")
//     true
//     >>> correct_bracketing(")(()")
//     false
