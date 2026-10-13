function diff_even_odd(list1: number[]): number {
  let even = -1;
  let odd = -1;
  list1.forEach((element, index) => {
    if (element % 2 == 0 && even == -1) even = index;
    else if (element % 2 != 0 && odd == -1) odd = index;
    });
    return odd - even;
};


//Tests
(() : boolean => {
  // Test case 1:
  let input = [1, 2, 3, 4, 5].


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.