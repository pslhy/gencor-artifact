function max_product_tuple(list1: [number, number][]): number {
  let maxProduct = 0

  for (const tuple of list1) {
    const product = tuple[0] * tuple[1]

    if (product > maxProduct) {
      maxProduct = product
    }
  }

  return maxProduct
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
