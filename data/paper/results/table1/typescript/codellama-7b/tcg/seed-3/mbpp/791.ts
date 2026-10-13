function remove_nested(test_tup: any): [number, number, number, number] {
  if(test_tup.hasOwnProperty("0") && test_tup.hasOwnProperty("1") && test_tup.hasOwnProperty("2") && test_tup.hasOwnProperty("3")){
      test_tup = [test_tup.hasOwnProperty("a"), test_tup.hasOwnProperty("b"), test_tup.hasOwnProperty("c"), test_tup.hasOwnProperty("d"),
               test_tup.hasOwnProperty("e"), test_tup.hasOwnProperty("f"), test_tup.hasOwnProperty("g"), test_tup.hasOwnProperty("h")];
  }
  return test_tup


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.