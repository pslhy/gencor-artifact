
function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
  let index_list: any[] = [{}];

  for (let i = 0; i < l1.length; i++) {
    if (l2[i] === l1[i] && l3[i] === l1[i]) {
      index_list.push(i);
    }
  }

  return index_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.
