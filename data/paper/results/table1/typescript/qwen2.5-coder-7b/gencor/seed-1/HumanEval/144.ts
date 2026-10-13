
function simplify(x: string, n: string): boolean { // Function that takes in two string fractions as input
    const xParts = x.split('/').map(Number); // Splitting x into numerator and denominator and converting them to numbers
    const nParts = n.split('/').map(Number); // Splitting n into numerator and denominator and converting them to numbers

    const numerator = xParts[0] * nParts[1]; // Calculating the numerator of the product
    const denominator = xParts[1] * nParts[0]; // Calculating the denominator of the product

    return numerator % denominator === 0; // Returning true if the product is a whole number, false otherwise
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Your task is to implement a function that will simplify the expression
//     x * n. The function returns true if x * n evaluates to a whole number and false
//     otherwise. Both x and n, are string representation of a fraction, and have the following format,
//     <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
//     You can assume that x, and n are valid fractions, and do not have zero as denominator.
//     >>> simplify("1/5", "5/1")
//     true
//     >>> simplify("1/6", "2/1")
//     false
//     >>> simplify("7/10", "10/2")
//     false
