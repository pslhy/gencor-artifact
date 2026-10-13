
function check_expression(exp: string): boolean {
    const stack = new Array<string>();
    const openingBrackets = new Set(['(', '{', '[']);
    const closingBrackets = new Set([')', '}', ']']);
    const matchingBrackets = new Map([
        [')', '('],
        ['}', '{'],
        [']', '[']
    ]);

    for (let ch of exp) {
        if (openingBrackets.has(ch)) {
            stack.push(ch);
        } else if (closingBrackets.has(ch)) {
            if (stack.length === 0) {
                return false;
            }
            const lastOpeningBracket = stack.pop() as string;
            if (lastOpeningBracket !== matchingBrackets.get(ch)) {
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
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
