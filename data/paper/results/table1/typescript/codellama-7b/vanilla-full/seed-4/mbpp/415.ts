function max_Product(arr: number[]): [number, number] {
  let maxProduct = 0;
  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      const product = arr[i] * arr[j];
      if (product > maxProduct) {
        maxProduct = product;
      }
    }
  }
  return [maxProduct, arr.indexOf(maxProduct)];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
