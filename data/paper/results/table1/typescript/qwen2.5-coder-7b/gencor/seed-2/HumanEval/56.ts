
function correct_bracketing(brackets: string): boolean { 
    let counter = 0;
    for (let bracket of brackets) {
        if (bracket === '<') {
            counter++;
        } else if (bracket === '>') {
            counter--;
            if (counter < 0) {
                return false;
            }
        }
    }
    return counter === 0;
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
