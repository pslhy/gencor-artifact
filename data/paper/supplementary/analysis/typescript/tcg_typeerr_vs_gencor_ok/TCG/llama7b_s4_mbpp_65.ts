function recursive_list_sum(data_list: (number | number[])[]): number {
  if (data_list.length === 0) {
    return 0;
  }
  if (Array.isArray(data_list[0])) {
    return recursive_list_sum(data_list[0].toString() as any as string[][] as number[][]) + recursive_list_sum(data_list.slice(1) as (number | number[])[]);
  } else {
    return data_list[0] as number + recursive_list_sum(data_list.slice(1) as (number | number[])[]);
  }
}

let test_list1 = [1, 2, [3, 4], 5, [6, 7, [8, 9]]];
let result1 = recursive_list_sum(test_list1 as (number | number[])[]);

let test_list2 = [[1, 2], [3, 4]];
let result2 = recursive_list_sum(test_list2 as (number | number[])[]);

let test_list3 = [[[1, 2], [3, 4]]];
let result3 = recursive_list_sum(test_list3 as (number | number[])[]);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.