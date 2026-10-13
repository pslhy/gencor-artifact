function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
   let test_arr1 = new Array(0);
   let test_arr2 = new Array(0);
   for (let i: number = 0; i < 4; i++) {
       test_arr1.push(test_tup1[i]);
       test_arr2.push(test_tup2[i]);
   }
   let result = new Array(0);
   for (let i: number = 0; i < 4; i++) {
       if (test_arr1[i] !== test_arr2[i]) {
           result.push(test_arr1[i]);
       }
   }
   for (let i: number = 0; i < 4; i++) {
       if (test_arr2[i] !== test_arr1[i]) {
           result.push(test_arr2[i]);
       }
   }
   return result;
}
console.log(find_dissimilar([1, 2, 3, 4], [2, 4, 6, 8])); // Output: [1, 3, 6, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
