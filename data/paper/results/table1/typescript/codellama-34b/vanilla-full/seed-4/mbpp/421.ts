function concatenate_tuple(test_tup: [string, string, number, string]): string {
   let delimiter: string = " ";
   for (let i: number = 0; i < 4; i++) {
       test_tup.push(test_tup[i] + delimiter);
   }
   return test_tup.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
