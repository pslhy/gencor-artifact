
function power_base_sum(base: number, power: number): number {
   let sum = 0;
   while (base > 0) {
       sum += base % 10 ** power;
       base = Math.floor(base / 10);
   }
   return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
