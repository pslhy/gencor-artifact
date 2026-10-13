function add_tuple(test_list: number[], test_tup: [number, number]): number[] {
   let test_result: number[] = []
   for (let i = 0; i < 2; i++) {
       test_result.push(test_tup[i] + test_list[i])
   }
   return test_result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
