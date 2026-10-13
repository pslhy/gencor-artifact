function add_dict_to_tuple(test_tup: [number, number, number], test_dict: {[key: string]: number}): [number, number, number, {[key: string]: number}] { 
  return [...test_tup, test_dict] as [number, number, number, {[key: string]: number}];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add an object to the array. The output should be an array.
