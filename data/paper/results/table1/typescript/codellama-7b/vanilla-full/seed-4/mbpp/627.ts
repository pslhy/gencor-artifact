function find_First_Missing(array: number[]): number {
  if (array.length === 0) {
    return 0;
  }

  let smallest = array[0];
  for (let i = 0; i < array.length; i++) {
    const num = array[i];
    if (num - smallest >= 2) {
      return smallest + 1;
    }
    smallest = num;
  }

  return smallest + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
