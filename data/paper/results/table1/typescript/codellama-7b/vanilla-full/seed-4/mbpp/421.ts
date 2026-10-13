function concatenate_tuple(test_tup: [string, string, number, string]): string {
  let delimiter: string = " ";
  return test_tup.join(delimiter);
}

const concatenatedStr = concatenate_tuple(["Hello", "World", 1234, "TypeScript"]);
console.log(concatenatedStr);  // output: "Hello World 1234 TypeScript"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
