function merge_dictionaries_three(dict1: {[key: string]: string}, dict2: {[key: string]: string}, dict3: {[key: string]: string}): {[key: string]: string} {
  const result = {};
  for (const key in dict1) {
    result[key] = dict1[key];
  }
  for (const key in dict2) {
    if (!result.hasOwnProperty(key)) {
      result[key] = dict2[key];
    }
  }
  for (const key in dict3) {
    if (!result.hasOwnProperty(key)) {
      result[key] = dict3[key];
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three dictionaries into a single object.
