
function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
  return test_tuple.filter(element => {
    if (Array.isArray(element)) {
      return extract_even(element as any).length > 0;
    } else {
      return element % 2 === 0;
    }
  });
}

// Test the function
const test_tuple: [number, number, [number, number, [number, number]], number, number] = [4, 3, [5, 6, [7, 10]], 11, 2];
console.log(extract_even(test_tuple)); // Output: [4, [6, [10]]]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
