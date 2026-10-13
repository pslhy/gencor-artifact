function match_parens(lst: string[]): string { 
    let [first, second] = lst;
    let balance = 0;

    function isBalanced(str: string): boolean {
        for (let char of str) {
            if (char === '(') balance++;
            else balance--;
            if (balance < 0) return false;
        }
        return balance === 0;
    }

    if (isBalanced(first + second) || isBalanced(second + first)) {
        return "Yes";
    } else {
        return "No";
    }
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
