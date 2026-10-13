function max_difference(test_list: [number, number][]): number {
  let maxDiff = 0;

  for(let i=0; i<test_list.length; i++){
    for(let j=i+1; j<test_list.length; j++){
      const diff = Math.abs(test_list[i][0] - test_list[j][0]) +
                    Math.abs(test_list[i][1] - test_list[j][1]);
      if(diff > maxDiff) maxDiff = diff;
    }
  }

  return maxDiff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
