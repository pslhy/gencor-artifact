function max_aggregate(stdata: [string, number][]): [string, number] {
  if(stdata.length === 0){
    return [stdata[0][0], stdata[0][1]];
  }
  let max = stdata[0][1];
  let max_index = 0;
  for(let i = 1; i< stdata.length; i++){
    if(stdata[i][1] > max){
      max = stdata[i][1];
      max_index = i;
    }
  }
  return [stdata[max_index][0], max];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.