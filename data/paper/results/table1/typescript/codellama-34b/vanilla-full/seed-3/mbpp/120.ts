function max_product_tuple(list1: [number, number][]): number {
  if(list1.lenght === 0){
    return -1;
  } else {
    let result: number = 0;
    for(let index =0; index < list1.lenght; index++){
      const tuple = list1[index];
      result = max(result, tuple[0] * tuple[1]);
    }
    return result;
  } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
