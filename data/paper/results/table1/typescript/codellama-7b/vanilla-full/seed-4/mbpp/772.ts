function remove_length(test_str: string, K: number): string {
  const test_arr = test_str.split(" ");
  let resultStr = "";

  for (const word of test_arr) {
    if (word.length !== K) {
      resultStr += `${word} `;
    }
  }
  return resultStr.trim();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.
