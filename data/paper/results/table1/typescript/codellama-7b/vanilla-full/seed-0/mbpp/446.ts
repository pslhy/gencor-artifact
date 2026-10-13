function count_Occurrence(tup: any, lst: any[]): number {
  const tupCounts: Record<any, number> = {};

  for (const element of lst) {
    if (element in tupCounts) {
      tupCounts[element]++;
    } else {
      tupCounts[element] = 1;
    }
  }

  return tupCounts;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
