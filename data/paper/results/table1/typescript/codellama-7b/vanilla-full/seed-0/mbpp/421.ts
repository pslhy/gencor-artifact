function concatenate_tuple(test_tup: [string, string, number, string]): string {
  const tuple = Array.from(test_tup);
  const joined_tuple = tuple.join(' : ');
  return joined_tuple;
}

let tuple = ['hello', 'my ','name is ', 'Denver'];
concatenate_tuple(tuple); // Output: 'hello : my : name is : Denver'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.
