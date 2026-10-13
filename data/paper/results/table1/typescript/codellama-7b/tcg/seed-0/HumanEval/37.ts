function sort_even(l: number[]): number[] {
  const l2: number[] = new Array(l.length);
  for (let i = 0; i < l.length; i++) {
    if (i % 2 == 0) {
      l2[i] = l[i];
    } else {
      l2[i] = l.slice(0, i + 1).sort(function(a, b) {
        return a - b;
      })[i];
    }
  }
  return l2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     This function takes an array l and returns an array l' such that
//     l' is identical to l in the odd indicies, while its values at the even indicies are equal
//     to the values of the even indicies of l, but sorted.
//     >>> sort_even([1, 2, 3])
//     [1, 2, 3]
//     >>> sort_even([5, 6, 3, 4])
//     [3, 6, 5, 4]