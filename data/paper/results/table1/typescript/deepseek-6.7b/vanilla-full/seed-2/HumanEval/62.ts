function derivative(xs: number[]): number[] {
    // We start from second index because derivatives of leading terms are zero
    for(let i = 1; i < xs.length; i++) {
        // For each coefficient, we multiply it by its power, then set this power to be power - 1
        xs[i] = xs[i] * i;
    }
    // Now, we can just slice array from first index onward, because elements pre-first index are constants or zero
    return xs.slice(1);
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
