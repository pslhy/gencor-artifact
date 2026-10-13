function max_aggregate(stdata: [string, number][]): [string, number] {
  let max_value: [string, number] = stdata[0];
  for (var i = 1; i < stdata.length; i++) {
    if (stdata[i][1] > max_value[1]) {
      max_value = stdata[i];
    }
  }
  return max_value;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
