function remove_nested(test_tup: any): [number, number, number, number] {
  if(test_tup.valueOf().toString() === 'Array()) {  //base Case  array() present and contains only elements of a single type. No need to check for empty array because that will not work either. We don'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.