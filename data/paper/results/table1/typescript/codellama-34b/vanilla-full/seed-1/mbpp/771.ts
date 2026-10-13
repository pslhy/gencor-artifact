function check_expression(exp: string): boolean {
    const map = {
        '(': ')',
        '[': ']',
        '{': '}'
    }
    const stack = []
    for (const char of exp) {
        if (char in map) {
            stack.push(char)
        } else {
            if (stack.length === 0 || map[stack[stack.length - 1]] !== char) {
                return false
            }
            stack.pop()
        }
    }
    return stack.length === 0
}
console.log(check_expression("((((((([])))))")); // true
console.log(check_expression("((([)]))")); // false
console.log(check_expression("(((["))); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/
