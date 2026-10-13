function get_coordinates(test_tup: [number, number]): number[][] {
  if(test_tup.length === 0){
    return [];
  }
  else {
    const result: number[][] = [];
    for(let index = 1; index < test_tup.length; index++){
      const current = test_tup[index];
      const previous = test_tup[index - 1];
      if(current- previous === 1){
        result.push([previous, current]);
      }
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
