function find_length(string: string): number {
  const state = 'None'; // None = 0, One = 1
  let count = 0;
  let max_length = 0
 
  for(const s of string){
   const cur_state = s === '0' ? 'None' : 'One'

   if ( cur_state !== state){
     max_length = Math.max(count, max_length)
     count = 1;
     state =='None'
   } else {
     count += 1;
   }
   }
   max_length = Math.max(count, max_length)
   return max_length;
 }

let input= '01001010'
let result = find_length(input)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.