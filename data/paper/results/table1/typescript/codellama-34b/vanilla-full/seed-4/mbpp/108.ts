function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
   let result: number[] = [];
   for (let i: number = 0; i < 3; i++) {
       result: push(
         ...(num1 && num1[i] ? num1[i] : 0),
         ...(num2 && num2[i] ? num2[i] : 0),
         ...(num2 && num2[i] ? num2[i] : 0)
       );
   }
   return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
