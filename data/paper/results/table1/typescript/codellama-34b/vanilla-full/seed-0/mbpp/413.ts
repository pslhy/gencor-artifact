function extract_nth_element(list1: [string, number, number][], n: number): any[] {
  const result = [];
  for (const [str, num1, num2] of list1) {
    if (n === num1) result.push(str);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
