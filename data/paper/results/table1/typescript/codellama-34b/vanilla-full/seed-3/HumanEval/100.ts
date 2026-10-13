function make_a_pile(n: number): number[] {
  if(n < 1){
      return [];
  }
  const result = [n];
  while( result.length < n){
      const stoneNum = result.length % 2 === 0 ? 2 ** (result.length + 1) : result.length + 1;
      result.push(stoneNum);
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, you have to make a pile of n levels of stones.
//     The first level has n stones.
//     The number of stones in the next level is:
//     - the next odd number if n is odd.
//     - the next even number if n is even.
//     Return the number of stones in each level in an array, where element at index
//     i represents the number of stones in the level (i+1).
//     Examples:
//     >>> make_a_pile(3)
//     [3, 5, 7]
