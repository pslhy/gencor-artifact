function max_product_tuple(list1: [number, number][]): number {
    let maxProduct = Number.NEGATIVE_INFINITY;
    const length = list1.length;
  
    for (let i = 0; i < length; i++) {
       for (let j = i + 1; j < length; j++) {
           const product1 = Math.abs(list1[i][0]*list1[j][0]);
           const product2 = Math.abs(list1[i][1]*list1[j][1]);
           const currMaxProduct = Math.max(product1, product2);
           
           if (currMaxProduct > maxProduct) {
               maxProduct = currMaxProduct;
           }
       }
    }
    return maxProduct;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
