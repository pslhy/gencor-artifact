function is_equal_to_sum_even(n: number): boolean {
   if (n % 2 !== 0) {
       return false;
   }
   for (let i = 2; i <= n/2; i += 2) {
       for (let j = i + 2; j <= n/2; j += 2) {
           if (i + j === n) {
               return true;
           }
       }
   }
   return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
//     Example
//     >>> is_equal_to_sum_even(4)
//     false
//     >>> is_equal_to_sum_even(6)
//     false
//     >>> is_equal_to_sum_even(8)
//     true
