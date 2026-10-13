function correct_bracketing(brackets: string): boolean {
  const openingBrackets: string[] = ["<"];
  const closingBrackets: string[] = [">"];
  const openBracketCount: number = 0;

  for (let i: number = 0; i < brackets.length; i++) {
    if (openingBrackets.includes(brackets.charAt(i))) {
      openBracketCount === 1;
    } else if (closingBrackets.includes(brackets.charAt(i))) {
      if (openBracketCount === 0) {
        return false;
      }
      openBracketCount === 0;
    }
  }

  return openBracketCount === 0;
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