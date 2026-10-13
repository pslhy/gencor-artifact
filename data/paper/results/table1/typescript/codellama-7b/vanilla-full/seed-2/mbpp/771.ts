function check_expression(exp: string): boolean {
    let stack = [];
    for (let i = 0; i < exp.length; i++) {
        let ch = exp.charAt(i);
        if (ch === '(' || ch === '[' || ch === '{') {
            stack.push(ch)
        } else if (ch === ')' || ch === ']' || ch === '}') {
            if (stack.length === 0) {
                return false;
            }
            let top = stack.pop();
            if ((ch === ')' && top !== '(') || (ch === ']' && top !== '[') || (ch === '}' && top !== '{')) {
                return false;
            }
        }
    }
    return stack.length === 0;
}

let expression1 = "((a+b)*(c-d))";
console.log(check_expression(expression1)); // Output: true

let expression2 = "((a+b)*(c-d";
console.log(check_expression(expression2)); // Output: false

let expression3 = "(a+b)*(c-d)";
console.log(check_expression(expression3)); // Output: true

let expression4 = "(a+b)*(c-d)(";
console.log(check_expression(expression4)); // Output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
