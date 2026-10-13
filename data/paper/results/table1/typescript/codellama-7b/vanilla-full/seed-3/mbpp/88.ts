function freq_count(list1: number[]): {[key: number]: number} {
  let d = {};
  for (let i of list1) {
    d[i] = d[i] || 0;
    d[i]++;
  }
  return d;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
