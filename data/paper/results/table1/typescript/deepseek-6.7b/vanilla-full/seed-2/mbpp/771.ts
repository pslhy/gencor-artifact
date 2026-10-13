function check_expression(exp: string): boolean {
    let stack = [];

    // Traverse the expression for parentheses
    for (let i = 0; i < exp.length; i++) {
        if (exp[i] == '(') {
            stack.push(exp[i]);
            continue;
        }

        // If current bracket is not opening bracket, it must be closing one
        if (stack.length == 0) {
            return false;
        }

        stack.pop();
    }

    // If stack is empty, it means we have balanced parentheses
    return stack.length == 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
