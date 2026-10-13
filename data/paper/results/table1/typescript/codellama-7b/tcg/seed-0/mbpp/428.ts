function shell_sort(my_list: number[]): number[] {
  const n = my_list.length;
  let gap = n / 2;
  let i = 0;

  while (gap > 0) {
    for (let j = gap; j < n; j++) {
      let temp = my_list[j];
      let k = j - gap;
      while (k >= 0 && my_list[k] > temp) {
        my_list[k + gap] = my_list[k];
        k -= gap;
      }
      my_list[k + gap] = temp;
    }
    gap = Math.floor(gap / 2);
  }

  return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.