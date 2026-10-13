function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
  return test_tuple.filter(element => {
    if (Array.isArray(element)) {
      return extract_even(element).filter(subElement => subElement % 2 === 0);
    } else {
      return element % 2 === 0;
    }
  });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
