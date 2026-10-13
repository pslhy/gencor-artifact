
function count_no_of_ways(n: number, k: number): number {
   if (n == 1 && k == 1) {
      return 1;
   }
   if (n == 1 && k > 1) {
      return k;
   }
   let prev_same = 1;
   let prev_diff = 0;
   let result = 0;
   for (let i = 2; i <= n; i++) {
      result = (prev_diff + prev_same) * (k - 1);
      prev_diff = prev_diff * (k - 2);
      prev_same = result - prev_diff;
   }
   return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
