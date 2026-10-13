
function flatten_list(list1: (number | number[])[]): number[] { 
  return list1.reduce((acc: number[], value: number | number[]): number[] => {
    if (Array.isArray(value)) {
      return acc.concat(flatten_list(value));
    } else {
      return acc.concat(value);
    }
  }, []);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.
