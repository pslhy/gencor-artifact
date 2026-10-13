function triples_sum_to_zero(l: number[]): boolean {
  let set = new Set<number>();
  for (let i = 0; i < l.length; i++) {
    for (let j = i + 1; j < l.length; j++) {
      if (l[i] + l[j] == 0) {
        set.add(l[i]);
        set.add(l[j]);
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
//     triples_sum_to_zero takes an array of integers as an input.
//     it returns true if there are three distinct elements in the array that
//     sum to zero, and false otherwise.
//     >>> triples_sum_to_zero([1, 3, 5, 0])
//     false
//     >>> triples_sum_to_zero([1, 3, -2, 1])
//     true
//     >>> triples_sum_to_zero([1, 2, 3, 7])
//     false
//     >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
//     true
//     >>> triples_sum_to_zero([1])
//     false
