function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
   let result: number[] = [];
   for (let i: number = 0; i < 3; i++) {
       result.push(...num1[i].toFixed(16).split(".")[0].split("")[0] + num2[i].toFixed(16).split(".")[0].split("")[0] + num2[i].toFixed(16).split(".")[0].split("")[0] + num3[i].toFixed(16).split(".")[0].split("")[0] + num3[i].toFixed(16).split(".")[0].split("")[0] + num3[i].toFixed(16).split(".")[0].split("")[0]
   [/INST]  function mergeSortedList(num1, num2, num3) {   let result = [];   for (let i = 0; i < num1.length; i++) {     result.push(num1[i]);   }   for (let i = 0; i < num2.length; i++) {     result.push(num2[i]);   }   for (let i = 0; i < num3.length; i++) {     result.push(num3[i]);   } } } }   return result;  }   function mergeSortedList(num1, num2, num3) {   let result = [];   for (let i = 0; i < num1.length; i++) {     result.push(num1[i]);   }   for (let i = 0; i < num2.length; i++) {     result.push(num2[i]);   }   for (let i = 0; i < num3.length; i++) {     result.push(num3[i]);   } } }   return result;  }   function mergeSortedList(num1, num2, num3) {   let result = [];   for (let i = 0; i < num1.length; i++) {     result.push(num1[i]);   }   for (let i = 0; i < num2.length; i++) {     result.push(num2[i]);   }   for


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.