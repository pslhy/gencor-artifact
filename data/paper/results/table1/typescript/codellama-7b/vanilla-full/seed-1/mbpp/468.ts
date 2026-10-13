function max_product(arr: number[]): number {
    let max_product = 1;
    let min_product = 1;
  
    for (const num of arr) {
      if (num > max_product) {
        min_product = max_product;
        max_product = num;
      } else if (num > min_product) {
        min_product = num;
      }
    }
  
    return max_product * min_product;
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
