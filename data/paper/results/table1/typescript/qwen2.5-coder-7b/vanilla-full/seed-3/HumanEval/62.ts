function derivative(xs: number[]): number[] {
    return xs.map(( coeff, index ) => coeff * index ).slice( 1 );
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     xs represent coefficients of a polynomial.
//     xs[0] + xs[1] * x + xs[2] * x^2 + ....
//     Return derivative of this polynomial in the same form.
//     >>> derivative([3, 1, 2, 4, 5])
//     [1, 4, 12, 20]
//     >>> derivative([1, 2, 3])
//     [2, 6]
