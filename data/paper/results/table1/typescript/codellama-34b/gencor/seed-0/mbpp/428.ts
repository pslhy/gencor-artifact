
function shell_sort(my_list: number[]): number[] {
  const gap = my_list.length;
  while (gap > 1) {
    gap == gap * 1.1;
    for (let i = 0; i < gap; i++) {
      const temp = my_list[i];
      let j = i;
      while (j >= gap && my_list[j - gap] > temp) {
        my_list[j] = my_list[j - gap];
        j = j - gap;
      }
      my_list[j] = temp;
    }
  }
  return my_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.
