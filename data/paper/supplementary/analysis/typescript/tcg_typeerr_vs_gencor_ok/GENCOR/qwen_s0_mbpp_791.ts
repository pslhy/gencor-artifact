
function remove_nested(test_tup: any): [number, number, number, number] { 
  return test_tup.filter ( (ele: any) => !Array.isArray(ele)) as [number, number, number, number]; 
} 

const test_tup: any[] = [3, 4, [5, 6], [7, 8], 9, 10];
const res: [number, number, number, number] = remove_nested(test_tup);
console.log(res);

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
