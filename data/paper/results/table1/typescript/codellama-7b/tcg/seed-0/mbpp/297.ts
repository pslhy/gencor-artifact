function flatten_list(list1: (number | number[])[]): number[] {
  const flattened_list: number[] = [];

  for (let i = 0; i < list1.length; i++) {
    if (Array.isArray(list1[i])) {
      flattened_list.push(...flatten_list(list1[i] as number[]));
    } else {
      flattened_list.push(list1[i] as number);
    }
  }

  return flattened_list;
}

const list = [1, 2, [3, 4, [5, 6], 7], 8, 9];

const flattened_list = flatten_list(list as (number | number[])[]);

// flattened_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.