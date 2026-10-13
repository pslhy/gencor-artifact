function max_product_tuple(list1: [number, number][]): number {
  if(list1.length === 0){
    return 0;
  }
  let maxProduct = list1[0][0] * list1[0][1];
  for(let i = 1; i < list1.length; i++){
    const pair1 = list1[i - 1];
    const pair2 = list1[i];
    const product = Math.abs(pair1[0] * pair2[1]) + Math.abs(pair1[1] * pair2[0]);
    maxProduct = Math.max(maxProduct, product);
  }
  return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.