function derivative(xs: number[]): number[] {
  const result: number[] = [];

  for (const [i, x] of xs.entries()) {
    if (i === 0) {
      result.push(1);
    } else {
      result.push(x * (i - 1));
    }
  }

  return result;
}

console.log(derivative([3, 1, 2, 4, 5])); // [1, 4, 12, 20]
console.log(derivative([1, 2, 3])); // [2, 6]


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
