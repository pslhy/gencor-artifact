function tuple_str_int(test_str: string): [number, number, number] {
   const arr: [string, string, string] = test_str.split(",");
   return [Number.parseInt(arr[0]), Number.parseInt(arr[1]), Number.parseInt(arr[2])];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.
