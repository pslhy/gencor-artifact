function move_zero(num_list: number[]): number[] {
  let zero_count = 0;
  let index = 0;
  while (index < num_list.length) {
    if (num_list[index] === 0) {
      zero_count++;
    } else {
      num_list[index - zero_count] = num_list[index];
    }
    index++;
  }
  while (zero_count > 0) {
    num_list[num_list.length - zero_count] = 0;
    zero_count--;
  }
  return num_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.
