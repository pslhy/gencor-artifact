function match_parens(lst: string[]): string {    
    let count1 = 0;
    let count2 = 0;
    for (let char of lst[0]) {
        if (char === '(') count1++;
        else count1--;
        if (count1 < 0) break;
    }
    for (let char of lst[1]) {
        if (char === '(') count2++;
        else count2--;
        if (count2 < 0) break;
    }
    if (count1 >= 0 && count2 >= 0 && (count1 + count2) % 2 === 0) return "Yes";
    count1 = 0;
    count2 = 0;
    for (let char of lst[1]) {
        if (char === '(') count1++;
        else count1--;
        if (count1 < 0) break;
    }
    for (let char of lst[0]) {
        if (char === '(') count2++;
        else count2--;
        if (count2 < 0) break;
    }
    return count1 >= 0 && count2 >= 0 && (count1 + count2) % 2 === 0 ? "Yes" : "No";
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