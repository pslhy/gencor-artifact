
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

// Examples
count_no_of_ways(3, 2)  // Output: 6
// i.e. [RRR], [BBB], [RRB], [RBR], [BRR], [BBR]
// where R = red, B = blue



//count_no_of_ways(4, 3)  // Output: 294
// i.e. ABCD, ACDB, ADBC, ADCB, etc.

//count_no_of_ways(10, 10)  // Output: 354631233
//count_no_of_ways(100, 100)  // Output: ... Too large

// The above is a recursive function for finding out the number of ways of painting the fence such that at most 2 adjacent posts have the same color. 
//It utilizes mem

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
