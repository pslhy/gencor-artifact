function simplify(x: string, n: string): boolean {
  const xNum = parseInt(x.split("/")[0], 10);
  const xDen = parseInt(x.split("/")[1], 10);
  const nNum = parseInt(n.split("/")[0], 10);
  const nDen = parseInt(n.split("/")[1], 10);

  const result = xNum * nNum;
  const gcd = getGcd(xDen, nDen);

  return result / gcd === nDen ? true : false;
}

function getGcd(a: number, b: number): number {
  if (b === 0) return a;
  return getGcd(b, a % b);
}

console.log(simplify("1/5", "5/1")); // true
console.log(simplify("1/6", "2/1")); // false
console.log(simplify("7/10", "10/2")); // false


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
