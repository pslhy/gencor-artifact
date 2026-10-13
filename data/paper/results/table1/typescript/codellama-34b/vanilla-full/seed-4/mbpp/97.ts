function frequency_lists(list1: number[][]): {[key: number]: number} {
   const flattened_list = list1.reduce((a, b) => [...a, ...b], []);
   const frequency: {[key: number]: number} = {};
   for (const element of flattened_list) {
       frequency[element] = (frequency[element] || 0) + 1;
   }
   return frequency;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find frequency of each element in a flattened array of arrays, returned in an object.
