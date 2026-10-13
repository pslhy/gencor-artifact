function extract_rear(test_tuple: [string, string, string]): string[] {
  let result: string[] = [];
  for (let i = 0; i < test_tuple.length; i++) {
    result.push(test_tuple[i].substr(1));
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract only the rear index element of each string in the given array.
