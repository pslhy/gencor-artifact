function find_tuples(test_list: [number, number, number][], K: number): [number, number, number][] {
  const divisible_tuples: [number, number, number][] = [];
  for (const tuple of test_list) {
    let all_elements_divisible = true;
    for (const element of tuple) {
      if (element % K !== 0) {
        all_elements_divisible = false;
        break;
      }
    }
    if (all_elements_divisible) {
      divisible_tuples.push(tuple);
    }
  }
  return divisible_tuples;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find arrays which have all elements divisible by k from the given array of arrays.
