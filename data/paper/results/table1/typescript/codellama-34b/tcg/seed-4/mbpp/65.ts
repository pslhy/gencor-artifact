function recursive_list_sum(data_list: (number | number[])[]): number {
   if (data_list.length === 0) {
      return 0;
   }
   const first_element = data_list[0];
   if (typeof first_element === 'number') {
      const sum = first_element;
      data_list = data_list.slice(1);
      return sum + recursive_list_sum(data_list)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.