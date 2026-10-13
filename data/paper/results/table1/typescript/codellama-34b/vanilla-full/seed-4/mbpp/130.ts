function max_occurrences(nums: number[]): number {
   let counts: Record<number, number> = {};
   let max_occurrence = 0;
   let max_element = null;

   for (let num of nums) {
       let count = counts[num] || 0;
       counts[num] = count + 1;
       if (count + 1 > max_occurrence) {
           max_occurrence = count + 1;
           max_element = num;
       }
   }

   return max_element;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
