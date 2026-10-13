
function tuple_str_int(test_str: string): [number, number, number] {
   let list1: number[] = test_str.split(',').reduce((acc: number[], x: string) => [...acc, parseInt(x)], []);
   return list1 as [number, number, number];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.
