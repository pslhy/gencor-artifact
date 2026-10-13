function shell_sort(my_list: number[]): number[] {
  let n = my_list.length;
  while (n > 1) {
    let gap = n / 2;
    for (let i = 0; i < gap; i++) {
      let j = i + gap;
      while (j < n) {
        if (my_list[j] < my_list[j - gap]) {
          let temp = my_list[j];
          my_list[j] = my_list[j - gap];
          my_list[j - gap] = temp;
        }
        j += gap;
      }
    }
    n = gap;
  }
  return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.
