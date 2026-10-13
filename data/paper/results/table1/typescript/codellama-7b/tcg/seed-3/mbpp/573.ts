function unique_product(list_data: number[]): number {
  if(list_data.length == 0){
    return -1;
  }
  const unique_elements: Set<number> = new Set(list_data);
  let prod = 1;
  unique_elements.forEach((val) => {
    prod = prod * val;
  });
  return prod;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to calculate the product of the unique numbers in a given array.