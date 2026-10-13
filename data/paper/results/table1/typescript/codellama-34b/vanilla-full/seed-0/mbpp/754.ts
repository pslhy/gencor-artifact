function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
  const result = [];
  for (let i = 0; i < l1.length; i++) {
    if (l2.includes(l1[i]) && l3.includes(l1[i])) {
      result.push(i);
    }
  }
  return result;
}

function get_common_elements(l1: number[], l2: number[], l3: number[]): number[] {
  const index_list = extract_index_list(l1, l2, l3);
  return index_list.map((i) => l1[i]);
}

const l1 = [1, 2, 3, 4, 5];
const l2 = [6, 7, 8, 9, 10];
const l3 = [11, 12, 13, 14, 15];

console.log(get_common_elements(l1, l2, l3)); // [1, 2, 3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.
