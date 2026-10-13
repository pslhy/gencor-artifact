function get_coordinates(test_tup: [number, number]): number[][] {
   let test_arr: number[][] = [[test_tup[0], test_tup[1] + 1], [test_tup[0], test_tup[1] - 1], [test_tup[0] + 1, test_tup[1]], [test_tup[0] - 1, test_tup[1]]];
   return test_arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
