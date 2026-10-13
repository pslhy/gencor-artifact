
function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
  if(test_tuple.flat(2).find(v => v % 2 !== 0) !== undefined) {
    return null
  }
  return test_tuple.map(v => Array.isArray(v) ? extract_even(v as [number, number, [number, number, [number, number]], number, number] 
                                                     ? (v as [number, number, [number, number, [number, number]], number, number] 
                                                     ? extract_even(v as [number, number, [number, number, [number, number]], number, number] 
                                                     ? v
                                                     : null
                                                     ? v
                                                     ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v
  ? null
  ? v

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
