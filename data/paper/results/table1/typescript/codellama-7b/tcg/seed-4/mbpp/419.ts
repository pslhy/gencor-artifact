function round_and_sum(list1: (number | number)[]): number {
  let sum: number = 0;
  for (let i of list1) {
    sum += Math.round(i);
  }

  return sum * list1.length;
}

const list1: (number | number)[] = [1.5, 2.5, 3.5, 4.5];
const result: number = round_and_sum(list1);

// Output: 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to round every number of a given array of numbers and print the total sum multiplied by the length of the array.