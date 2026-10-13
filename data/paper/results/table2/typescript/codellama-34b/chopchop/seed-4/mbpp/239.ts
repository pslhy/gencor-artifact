
function get_total_number_of_sequences(m: number, n: number): number {
   if (m < 1 || n < 1) {
       return 0;
   }
   let total = 0;
   for (let i = 1; i <= n; i++) {
       const min_value = Math.max(1, Math.floor(m / Math.pow(2, n - i)));
       const max_value = Math.min(m, min_value * 2);
       total += get_total_number_of_sequences(m, n - i);
       for (let j = min_value; j <= max_value; j++) {
           total++;
       }
   }
   return total;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
