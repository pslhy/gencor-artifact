function move_zero(num_list: number[]): number[] {
  let n = num_list.length;
  while (n > 0 && num_list[n - 1] == 0) {
      n--;
  }
  for (let i = n - 1; i >= 0; i--) {
      if (num_list[i] !== 0) {
          num_list[n++] = num_list[i];
      }
  }
  while (n < num_list.length) {
      num_list[n++] = 0;
  }
  return num_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.
