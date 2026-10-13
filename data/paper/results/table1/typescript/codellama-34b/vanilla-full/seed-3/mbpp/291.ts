function count_no_of_ways(n: number, k: number): number {
  if(n < 2 || k < 1){
    return n * k;
  }
  if(n == 2){
    return k * (k-1);
  }
  if (k == 1){
    return 1;
  }
  return (k-1) * count_no_of_ways(n-1, k) + count_no_of_ways(n-2, k-1);
}

console.log(count_no_of_ways(5, 3)); // output: 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
