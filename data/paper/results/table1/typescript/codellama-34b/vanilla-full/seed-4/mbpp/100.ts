function next_smallest_palindrome(num: number): number {
   if (num < 10) {
       return 11;
   }
   let str = num.toString();
   let mid = Math.floor(str.length / 2);
   let left = str.slice(0, mid);
   let right = str.slice(mid).split("").reverse().join("");
   if (left === right) {
       return num;
   }
   let new_num = parseInt(left + right);
   return new_num < num ? new_num : num + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
