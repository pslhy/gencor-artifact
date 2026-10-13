function shell_sort(my_list: number[]): number[] {
  const gap = my_list.length;
  while (gap > 1) {
    gap = Math.floor(gap / 2);
    for (let i = 0; i < gap; i++) {
      for (let j = i + gap; j < my_list.length; j += gap) {
        if (my_list[i] > my_list[j]) {
          const temp = my_list[i];
          my_list[i] = my_list[j];
          my_list[j] = temp;
        }
      }
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
