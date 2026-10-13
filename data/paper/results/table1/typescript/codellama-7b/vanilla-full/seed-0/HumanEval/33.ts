function sort_third(l: number[]): number[] {
  const l2: number[] = new Array(l.length);
  for (let i = 0; i < l.length; i++) {
    if (i % 3 == 0) {
      const temp = l[i];
      const temp2 = l2[i];
      l[i] = temp2;
      l2[i] = temp;
    } else {
      l2[i] = l[i];
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
//     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
//     to the values of the corresponding indicies of l, but sorted.
//     >>> sort_third([1, 2, 3])
//     [1, 2, 3]
//     >>> sort_third([5, 6, 3, 4, 8, 9, 2])
//     [2, 6, 3, 4, 8, 9, 5]
