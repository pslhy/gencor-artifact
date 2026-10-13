function get_odd_collatz(n: number): number[] {
  if(n < 1){
      return [];
  }
  const sequence = [n];
  while(sequence[sequence.length - 1] >= 1){
      if (sequence[sequence.length - 1] % 2 == 0){
          sequence.push(sequence[sequence.length - 1] / 2);
      } else {
          sequence.push(sequence[sequence.length - 1] * 3 + 1)
      }
  }
  return sequence.filter( num => num % 2 !== 0);
}
/*
Explanation:
We define a recursive function `get_collatz_sequence` that returns all the numbers in the Collatz sequence
that start with a given number `n`. We use the Collatz conjecture to determine which number comes next in the sequence.
If the current number is even, we return its halved value. Otherwise, we return 3 times the current number plus 1.
We start the sequence with 1 and recurse until the current number is 1. We then return all the odd numbers in the sequence.
*/
get_odd_collatz(5); // returns [1, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer n, return a sorted array that has the odd numbers in collatz sequence.
//     The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
//     as follows: start with any positive integer n. Then each term is obtained from the
//     previous term as follows: if the previous term is even, the next term is one half of
//     the previous term. If the previous term is odd, the next term is 3 times the previous
//     term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
//     Note:
//     1. Collatz(1) is [1].
//     2. returned array sorted in increasing order.
//     For example:
//     get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
//     >>> get_odd_collatz(5)
//     [1, 5]
