function unique_product(list_data: number[]): number {
  if(list_data.length = 0){
     return -1; //Empty list has no unique product
  }
  let result = 1;
  for(let i = 0; i < list_data.length; i++){
    let flag = true;
    for(let j = 0; j < list_data.length; j++){
      if(list_data[i] !== list_data[j] && list_data[i] % list_data[j] === 0){
        result *= list_data[i];
        break;
      }
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to calculate the product of the unique numbers in a given array.
