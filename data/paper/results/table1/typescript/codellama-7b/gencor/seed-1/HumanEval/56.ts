
function correct_bracketing(brackets: string): boolean {
    const openingBrackets = ["<", "{", "["];
    const closingBrackets = [">", "}", "]"];

    const stack: string[] = [];

    for (const c of brackets) {
        if (openingBrackets.includes(c)) {
            stack.push(c);
        } else if (closingBrackets.includes(c)) {
            if (stack.length === 0) {
                return false;
            }
            const top = stack.pop();
            if (closingBrackets.indexOf(c) !== openingBrackets.indexOf(top!)) {
                return false;
            }
        }
    }

    return stack.length === 0;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     brackets is a string of "<" and ">".
//     return true if every opening bracket has a corresponding closing bracket.
//     >>> correct_bracketing("<")
//     false
//     >>> correct_bracketing("<>")
//     true
//     >>> correct_bracketing("<<><>>")
//     true
//     >>> correct_bracketing("><<>")
//     false
