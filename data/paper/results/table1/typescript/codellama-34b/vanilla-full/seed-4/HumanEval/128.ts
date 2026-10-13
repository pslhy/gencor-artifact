function prod_signs(arr: number[]): number | undefined {
  if (arr.length === 0) {
    return undefined;
  }

  let product = 1;
  for (const num of arr) {
    product *= Math.sign(num);
  }

  return arr.reduce((sum, num) => sum += Math.abs(num) * product, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given an array arr of integers and you need to return
//     sum of magnitudes of integers multiplied by product of all signs
//     of each number in the array, represented by 1, -1 or 0.
//     Note: return undefined for empty arr.
//     Example:
//     >>> prod_signs([1, 2, 2, -4])
//     9
//     >>> prod_signs([0, 1])
//     0
//     >>> prod_signs([])
//     undefined
