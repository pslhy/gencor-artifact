function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
  let list1 = num1.slice();
  let list2 = num2.slice();
  let list3 = num3.slice();
  let result: number[] = [];
  
  while (list1.length || list2.length || list3.length) {
    const min1 = list1.shift();
    const min2 = list2.shift();
    const min3 = list3.shift();
    const min = Math.min(min1, min2, min3);
    result.push(min);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
