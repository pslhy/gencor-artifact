function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
   let test_tup1_length = test_tup1.length;
   let test_tup2_length = test_tup2.length;
   let max_length = test_tup1_length > test_tup2_length ? test_tup1_length : test_tup2_length;
   let max_elements = [];

   for (let i = 0; i < max_length; i++) {
       let element1 = test_tup1[i];
       let element2 = test_tup2[i];

       let max_value = Math.max(element1, element2);

       max_elements.push(max_value);
   }

   return max_elements;
}

// Test case:
console.log(maximize_elements([1, 2, 3], [4, 5, 6])); // [1, 2, 3, 4, 5, 6]
console.log(maximize_elements([7, 8, 9], [1, 2, 3])); // [7, 8, 9, 1, 2, 3]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
