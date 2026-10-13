function shell_sort(my_list: number[]): number[] {
  const n = my_list.length;
  let gap = n ~/ 2;
  
  while (gap > 0) {
    for (let i = 0; i < n - gap; i++) {
      if (my_list[i] > my_list[i + gap]) {
        [my_list[i], my_list[i + gap]] = [my_list[i + gap], my_list[i]];
      }
    }
    
    gap = gap ~/ 2;
  }
  
  return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.
