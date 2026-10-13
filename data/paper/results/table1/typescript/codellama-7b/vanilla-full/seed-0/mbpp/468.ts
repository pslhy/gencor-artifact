function max_product(arr: number[]): number {
  const n = arr.length;
  if (n === 0) {
    return 0;
  }

  let max_product = 1;
  let min_product = 1;

  for (let i = 0; i < n; i++) {
    const num = arr[i];
    const product = num * max_product;

    if (num > max_product) {
      max_product = num;
    }

    if (num < 0) {
      const temp = max_product;
      max_product = min_product;
      min_product = temp;
    }

    if (product > max_product) {
      max_product = product;
    }
  }

  return max_product;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
