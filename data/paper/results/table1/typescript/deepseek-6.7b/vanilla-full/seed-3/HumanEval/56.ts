function correct_bracketing(brackets: string): boolean {
    let count = 0;
    for (let i = 0; i < brackets.length; i++) {
        if (brackets[i] == '<') {
            count++;
        } else if (brackets[i] == '>') {
            count--;
            if (count < 0) {
                return false;
            }
        }
    }
    return count === 0;
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
