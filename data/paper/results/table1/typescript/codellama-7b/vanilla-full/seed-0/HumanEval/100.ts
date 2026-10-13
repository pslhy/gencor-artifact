function make_a_pile(n: number): number[] {
  const pile: number[] = new Array(n);

  for (let i = 0; i < n; i++) {
    let numStones = n + 1;

    if (n % 2 === 0) {
      numStones += 2;
    } else if (n % 2 === 1) {
      numStones += 1;
    }

    pile[i] = numStones;
    n = numStones;
  }

  return pile;
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
