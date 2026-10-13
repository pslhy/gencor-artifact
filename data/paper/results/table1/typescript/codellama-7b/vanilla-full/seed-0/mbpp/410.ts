function min_val(listval: (string | number)[]): number {
  const filtered = listval.filter(item => typeof item === 'number');
  return filtered.length ? Math.min(...filtered) : NaN;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.
