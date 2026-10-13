
function match_parens(lst: string[]): string {
    let left1 = lst[0].split('').filter(c => c === '(').length;
    let right1 = lst[0].split('').filter(c => c === ')').length;
    let left2 = lst[1].split('').filter(c => c === '(').length;
    let right2 = lst[1].split('').filter(c => c === ')').length;
  
    if (right2 > left2) {
      [left1, right1] = [left1 - 1, right1 + 1];
    } else {
      [left1, left2] = [left1 + 1, left2 - 1];
    }

    return (left1 >= 0 && right1 >= 0 && left2 >= 0 && right2 >= 0 && left1 + right1 + left2 + right2 === left1 + right1 + left2 + right2 && left2 <= right2 * 2 && left1 <= right1 * 2 && right1 >= right2 && right2 >= left2 && right1 === left1 + right2 && left1 === left2 + right1 && right2 >= left2 && left2 <= right1 * 2 && right2 * 2 <= left1 + right1 * 2 && right1 >= left2 && left2 <= right1 * 2 && right2 >= left1 * 2 && left1 * 2 <= right1 + left2 * 2 && right1 * 2 <= left2 + right2 * 2 && left2 <= right2 * 2 && left1 * 2 <= right1 + left2 * 2 && right2 * 2 <= left1 + right1 * 2 && right1 >= right2 && right2 >= left2 && right1 >= left2 && left2 <= right1 * 2 && left1 <= right1 * 2 && right2 >= left1 && left1 <= right2 * 2 && right1 <= left2 + right2 * 2 && left2 <= right1 + left2 * 2 && right2 <= right1 + left2 && left1 * 2 <= right1 + left2 * 2 && right1 * 2 <= left2 + right2 * 2 && left1 >= right2 && left2 >= right1 && right2 >= right1 && left2 <= right1 * 2 && right1 <= right2 && left1 <= left2 + right2 * 2 && right1 <= left1 * 2 && left2 >= left1 && right2 <= left2 + right1 && left1 >= left2 * 2 && right1 >= left1 && left2 >= right1 && right2 >= right1 && left2 <= right1 * 2 && right1 <= right2 && left1 <= left2 + right2 * 2 && right1 <= left1 * 2 && left2 >= left1 && right2 <= left2 + right1 && left1 >= left2 * 2 && right1 >= left1 && left2 >= right1 && right2 >= right1 && left2 <= right1 * 2 && right1 <= right2 && left1 <= left2 + right2 * 2 && right1 <= left1 * 2 && left2 >= left1 && right2 <= left2 + right1 && left1 >= left2 * 2 && right1 >=

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
