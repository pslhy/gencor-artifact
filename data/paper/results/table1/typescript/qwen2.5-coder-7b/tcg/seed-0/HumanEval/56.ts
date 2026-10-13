function correct_bracketing(brackets: string): boolean {;
  let balance = 0;
  for (const char of brackets) {
    if (char === '<') {
      balance += 1;
    } else if (char === '>') {
      balance -= 1;
      if (balance < 0) {
        return false;
      }
    }
  }
  return balance === 0;
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