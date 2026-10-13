function move_zero(num_list: number[]): number[] {
  const filtered_list: number[] = num_list.filter(i => i != 0);
  const zero_count: number = num_list.length - filtered_list.length;
  for (let i = 0; i < zero_count; i++) {
    filtered_list.push(0);
  }
  return filtered_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.
