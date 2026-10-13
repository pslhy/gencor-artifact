function pack_consecutive_duplicates(list1: any[]): any[][] {
   let output: any[][] = [];
   for (let i = 0; i < list1.length; i++) {
       let current = list1[i];
       if (i == 0 || list1[i - 1] != current) {
           output.push([current]);
       } else {
           output[output.length - 1].push(current);
       }
   }
   return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
