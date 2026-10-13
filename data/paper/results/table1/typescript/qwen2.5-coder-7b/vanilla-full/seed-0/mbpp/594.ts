function diff_even_odd(list1: number[]): number { 
  let firstEven: number | undefined = undefined;
  let firstOdd: number | undefined = undefined;

  for (let num of list1) {
    if (firstEven === undefined && num % 2 === 0) {
      firstEven = num;
    } else if (firstOdd === undefined && num % 2 !== 0) {
      firstOdd = num;
    }
    if (firstEven !== undefined && firstOdd !== undefined) {
      break;
    }
  }

  if (firstEven === undefined || firstOdd === undefined) {
    throw new Error('Array must contain at least one even and one odd number');
  }

  return firstEven - firstOdd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
