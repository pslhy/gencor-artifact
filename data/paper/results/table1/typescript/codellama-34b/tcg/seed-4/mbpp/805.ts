function max_sum_list(lists: number[][]): number[] {
   if (lists.length === 0) {
       return []
   }
   let max_sum = 0;
   let max_sum_list_index = 0;
   for (let i = 0; i < lists.length; i++) {
       const sum = lists[i].reduce((a: number, b: number) => a + b, 0);
       if (sum > max_sum) {
           max_sum = sum;
           max_sum_list_index = i;
       }
   }
   return lists[max_sum_list_index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.