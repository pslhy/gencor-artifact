function check_smaller(test_tup1: [number, number, number], test_tup2: [number, number, number]): boolean { 
  return test_tup2.every((value, index) => value < test_tup1[index]);
}

// Test
console.log(check_smaller([11, 5, 15], [3, 3, 10])); // Output: false
console.log(check_smaller([11, 5, 15], [3, 4, 10])); // Output: true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if each element of second array is smaller than its corresponding element in the first array.
