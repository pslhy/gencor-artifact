
function shell_sort(my_list: number[]): number[] {
  const n = 5;
  let gap = n;
  do {
    gap = Math.floor(n * (1 - Math.pow(1 / 2, gap / n)) / (1 - 1 / 2));
    for (let i = gap; i < my_list.length; i++) {
      let temp = my_list[i];
      let j = i;
      while (j >= gap && my_list[j - gap] > temp) {
        my_list[j] = my_list[j - gap];
        j -= gap;
      }
      my_list[j] = temp;
    }
  } while (gap > 1);
  return my_list;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.
