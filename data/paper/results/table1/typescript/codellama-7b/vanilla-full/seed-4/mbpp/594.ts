function diff_even_odd(list1: number[]): number {
  if (list1.length === 0) {
    return 0;
  }
  let firstEven = list1.find((x) => x % 2 === 0);
  let firstOdd = list1.find((x) => x % 2 !== 0);
  if (firstEven && firstOdd) {
    return firstEven - firstOdd;
  } else {
    return 0;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
