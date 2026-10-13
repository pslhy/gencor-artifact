function freq_count(list1: number[]): {[key: number]: number} {
  let dict1: {[key: number]: number} = {};
  list1.forEach((element: number) => {
    if (!(element in dict1)) {
      dict1[element] = 0;
    }
    dict1[element] += 1;
  });
  return dict1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
