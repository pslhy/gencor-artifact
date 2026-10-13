function min_product_tuple(list1: [number, number][]): number {
  if(list1.length === 0){
    return 0;
  }
  let minProduct = list1[0][0] * list1[0][1];
  for(let i = 1; i < list1.length; i++){
    const pair = list1[i];
    minProduct = Math.min(minProduct, pair[0], pair[1]);
  }
  return minProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum product from the pairs of arrays within a given array.