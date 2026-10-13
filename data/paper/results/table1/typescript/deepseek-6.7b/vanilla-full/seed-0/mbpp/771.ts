function check_expression(exp: string): boolean {
    const stack = [];
    const map = {
        ')': '(',
        ']': '[',
        '}': '{'
    };

    for (let i = 0; i < exp.length; i++) {
        if (exp[i] === '(' || exp[i] === '[' || exp[i] === '{') {
            stack.push(exp[i]);
        }
        else if (map[exp[i]]) {
            if (stack.length === 0 || stack.pop() !== map[exp[i]]) {
                return false;
            }
        }
        else {
            return false;
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
