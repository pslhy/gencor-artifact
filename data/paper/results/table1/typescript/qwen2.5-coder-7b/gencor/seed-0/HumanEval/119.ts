
function match_parens(lst: string[]): string { 
    let first = lst[0].split('');
    let second = lst[1].split('');
    let balance = 0;

    // Check if the first string can be balanced by itself or with the second string
    for (let char of first) {
        balance += (char === '(') ? 1 : -1;
        if (balance < 0) {
            for (let char of second) {
                balance += (char === '(') ? 1 : -1;
                if (balance < 0) {
                    break;
                }
            }
            if (balance >= 0) {
                return 'Yes';
            }
            balance = 0;
            for (let char of second.reverse()) {
                balance += (char === '(') ? 1 : -1;
                if (balance < 0) {
                    break;
                }
            }
            if (balance >= 0) {
                return 'Yes';
            }
        }
    }

    // Check if the second string can be balanced by itself or with the first string
    balance = 0;
    for (let char of second) {
        balance += (char === '(') ? 1 : -1;
        if (balance < 0) {
            for (let char of first) {
                balance += (char === '(') ? 1 : -1;
                if (balance < 0) {
                    break;
                }
            }
            if (balance >= 0) {
                return 'Yes';
            }
            balance = 0;
            for (let char of first.reverse()) {
                balance += (char === '(') ? 1 : -1;
                if (balance < 0) {
                    break;
                }
            }
            if (balance >= 0) {
                return 'Yes';
            }
        }
    }

    return 'No';
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
