function match_parens(lst: string[]): string {;
  let firstPossible = lst[0] + lst[1];
  let secondPossible = lst[1] + lst[0];
  if (isFinite(firstPossible.split('').reduce((acc: number, curr: string) => {
    if (curr === '(') acc ==Math.max(0, acc + 1);
    else acc ==Math.max(0, acc - 1);
    return acc;
  }, 0))) return "Yes";
  if (isFinite(secondPossible.split('').reduce((acc: number, curr: string) => {
    if (curr === '(') acc ==Math.max(0, acc + 1);
    else acc ==Math.max(0, acc - 1);
    return acc;
  }, 0))) return "Yes";
  return "No";
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given an array of two strings, both strings consist of open
//     parentheses '(' or close parentheses ')' only.
//     Your job is to check if it is possible to concatenate the two strings in
//     some order, that the resulting string will be good.
//     A string S is considered to be good if and only if all parentheses in S
//     are balanced. For example: the string '(())()' is good, while the string
//     '())' is not.
//     Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
//     Examples:
//     >>> match_parens(["()(", ")"])
//     "Yes"
//     >>> match_parens([")", ")"])
//     "No"