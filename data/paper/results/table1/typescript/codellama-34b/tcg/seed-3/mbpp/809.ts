function check_smaller(test_tup1: [number, number, number], test_tup2: [number, number, number]): boolean {
  if(test_tup1[0] > test_tup2[0]) return true;
  if(test_tup1[1] > test_tup2[1]) return true;
  if(test_tup1[2] > test_tup2[2]) return true;
  return false;
}
/*
  Explanation
  First I define an array of numbers test1 and test2. 
  Then, I used the if statememt to check if any number in arr1 is greater than the corresponding number in arr2. 
  if i detect such condition, i return true, otherwise i return false.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if each element of second array is smaller than its corresponding element in the first array.