function extract_nth_element(list1: [string, number, number][], n: number): any[] {
  const result = [];
  for (let i = 0; i < list1.length; i++) {
    if (n === i) result.push(list1[i][n]);
    else result.push(list1[i][0]);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
