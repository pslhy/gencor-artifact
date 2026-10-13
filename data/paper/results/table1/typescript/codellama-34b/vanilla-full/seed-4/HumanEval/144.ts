function simplify(x: string, n: string): boolean {
  const xNum = parseInt(x.split("/")[0]);
  const xDen = parseInt(x.split("/")[1]);

  const nNum = parseInt(n.split("/")[0]);
  const nDen = parseInt(n.split("/")[1]);

  const resultNum = xNum * nNum;
  const resultDen = xDen * nDen;

  return resultNum % resultDen === 0;
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
