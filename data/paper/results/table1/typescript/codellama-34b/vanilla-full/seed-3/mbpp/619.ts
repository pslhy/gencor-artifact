function move_num(test_str: string): string {
   let str_list = test_str.split("");
   let num_list = [];
   
   for (let i = 0; i < str_list.length; i++) {
       if (!isNaN(str_list[i]) {
           num_list.push(str_list[i]);
           str_list.splice(i, 1);
           i--;
       }
   }
   
   return str_list.concat(num_list).join("");
}

console.log(move_num("abc123def456")); // Output: "abcdef123456"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to move all the numbers to the end of the given string.
