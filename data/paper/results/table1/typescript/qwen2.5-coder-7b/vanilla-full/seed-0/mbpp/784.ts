function mul_even_odd(list1: number[]): number { 
  let even_found = false, odd_found = false;
  let prod = 1;
  let found = false;

  for (let i = 0; i < list1.length; i++) {
    if (list1[i] % 2 === 0 && !even_found) {
      prod *= list1[i];
      even_found = true;
      found = true;
    } else if (list1[i] % 2 !== 0 && !odd_found) {
      prod *= list1[i];
      odd_found = true;
      found = true;
    }
    if (even_found && odd_found) break;
  }

  return found ? prod : -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
