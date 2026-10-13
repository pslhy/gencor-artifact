function mul_even_odd(list1: number[]): number {
  let even = -1;
  let odd = -1;
  list1.forEach((element, index) => {
    if (element % 2 === 0 && even < 0) even = index;
    else if (even < 0) odd = index;
  });
  if (even < 0 || odd < 0) return 0;
  return list1[even] * list1[odd];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
