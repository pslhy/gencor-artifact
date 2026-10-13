
function move_num(test_str: string): string {
   let str_list = test_str.split("");
   let num_list = str_list.filter(function(val, ind){
      return !Number.isNaN(val);
   });
   let new_str_list = str_list.filter(function(val, ind){
      return Number.isNaN(val);
   });
   return new_str_list.join("") + num_list.join("");
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
