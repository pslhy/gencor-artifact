function do_algebra(operator: string[], operand: number[]): number {
    let result = 0;
    for (let i = 0; i < operand.length - 1; i++) {
        switch (operator[i]) {
            case "+":
                result += operand[i];
                break;
            case "-":
                result -= operand[i];
                break;
            case "*":
                result *= operand[i];
                break;
            case "//":
                result = Math.floor(result / operand[i]);
                break;
            case "**":
                result **= operand[i];
                break;
            default:
                throw new Error(`Unsupported operand: ${operator[i]}`);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given two arrays operator, and operand. The first array has basic algebra operations, and
//     the second array is an array of integers. Use the two given arrays to build the algebric
//     expression and return the evaluation of this expression.
//     The basic algebra operations:
//     Addition ( + )
//     Subtraction ( - )
//     Multiplication ( * )
//     Floor division ( // )
//     Exponentiation ( ** )
//     Example:
//     operator['+', '*', '-']
//     array = [2, 3, 4, 5]
//     result = 2 + 3 * 4 - 5
//     => result = 9
//     Note:
//     The length of operator array is equal to the length of operand array minus one.
//     Operand is an array of of non-negative integers.
//     Operator array has at least one operator, and operand array has at least two operands.
