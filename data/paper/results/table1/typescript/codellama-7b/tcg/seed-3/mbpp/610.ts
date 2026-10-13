function remove_kth_element(list1: number[], L: number): number[] {
  if(L >= 0 && L < list1.length) {
    // Remove the k'th element by setting its value to null
    list1[L] = null


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array and returns an array with the same elements, but the k'th element removed.