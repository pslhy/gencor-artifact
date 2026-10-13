function shell_sort(my_list: number[]): number[] {
  let n = my_list.length;
  let gap = ~~(n / 2);
  while (gap > 0) {
    for (let i = gap; i < n; i++) {
      let tmp = my_list[i];
      let j = i;
      while (j >= gap && my_list[j - gap] > tmp) {
        my_list[j] = my_list[j - gap];
        j -= gap;
      }
      my_list[j] = tmp;
    }
    gap = ~~(gap / 2);
  }

  return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.
