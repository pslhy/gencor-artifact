function count_first_elements(test_tup: (number | [number, number])[]): number {
  if(test_tup.length === 0){
    return 0;
  } else {
    const result: number = test_tup.slice(1).reduce((cnt1, cur) => (cnt1 + 1), 0);
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
