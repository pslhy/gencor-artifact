function second_smallest(numbers: (number | number)[]): number | undefined {;
  if (numbers.length < 2) return undefined;

  let smallest = Number.MAX_SAFE_INTEGER;
  let secondSmallest = Number.MAX_SAFE_INTEGER;

  for (const n of numbers) {
    if (n < smallest) {
      secondSmallest = smallest;
      smallest = n;
    } else if (n < secondSmallest && n !== smallest) {
      secondSmallest = n;
    }
  }

  return secondSmallest === Number.MAX_SAFE_INTEGER ? undefined : secondSmallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.
