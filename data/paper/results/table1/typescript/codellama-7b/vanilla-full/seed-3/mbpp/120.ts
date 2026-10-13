function max_product_tuple(list1: [number, number][]): number {
  let max_product: number = 0;
  for (let i = 0; i < list1.length; i++) {
    const tuple: [number, number] = list1[i];
    const abs_product: number = Math.abs(tuple[0]) * Math.abs(tuple[1]);
    if (abs_product > max_product) {
      max_product = abs_product;
    }
  }
  return max_product;
}

const list1: [number, number][] = [[1, -2], [-3, 4], [5, -6]];
console.log(max_product_tuple(list1)); // Output: 12


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
