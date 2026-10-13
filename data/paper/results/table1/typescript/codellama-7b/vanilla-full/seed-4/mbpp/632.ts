function move_zero(num_list: number[]): number[] {
  let len: number = num_list.length;
  let i: number = 0;
  while (i < len - 1) {
    if (num_list[i] === 0) {
      const temp: number = num_list[i];
      num_list[i] = num_list[len - 1];
      num_list[len - 1] = temp;
      len -= 1;
    } else {
      i += 1;
    }
  }
  return num_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.
