function recursive_list_sum(data_list: (number | number[])[]): number {
   if data_list.length == 0 {
      return 0
   }
   let head = data_list[0];
   let tail = data_list.slice(1);
   if typeof head == 'number' {
      return head + recursive_list_sum(tail);
   } else {
      return recursive_list_sum(head) + recursive_list_sum(tail);
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
