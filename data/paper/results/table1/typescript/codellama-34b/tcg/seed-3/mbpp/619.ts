function move_num(test_str: string): string {
   let str_list = test_str.split("");
   let num_list = [];
   
   for (let i = 0; i < str_list.length; i++) {
       if (!isNaN(str_list[i] as any as number)) {
           num_list.push(str_list[i]);
       }
   }
   
   for (let i = 0; i < num_list.length; i++) {
       str_list.splice(str_list.indexOf(num_list[i]), 1);
   }
   
   for (let i = 0; i < num_list.length; i++) {
       str_list.push(num_list[i]);
   }
   
   return str_list.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.